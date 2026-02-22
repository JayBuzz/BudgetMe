// CSVImportView.swift
// Bbudget Me

import SwiftUI
import UniformTypeIdentifiers

// MARK: - CSV Import View

struct CSVImportView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var importedRows: [[String]] = []
    @State private var headers: [String] = []
    @State private var showFilePicker = false
    @State private var parseError: String? = nil
    @State private var step: ImportStep = .pick

    // Column mapping
    @State private var dateCol: Int? = nil
    @State private var amountCol: Int? = nil
    @State private var payeeCol: Int? = nil
    @State private var notesCol: Int? = nil

    @State private var selectedAccountID: UUID? = nil
    @State private var defaultType: TransactionType = .expense
    @State private var dateFormat = "MM/dd/yyyy"

    @State private var previewTransactions: [Transaction] = []
    @State private var importedCount = 0
    @State private var showSuccess = false

    enum ImportStep { case pick, map, preview, done }

    let dateFormats = ["MM/dd/yyyy", "dd/MM/yyyy", "yyyy-MM-dd", "M/d/yy", "dd-MM-yyyy"]

    var canMap: Bool { dateCol != nil && amountCol != nil && payeeCol != nil }

    var body: some View {
        NavigationView {
            Group {
                switch step {
                case .pick:    pickView
                case .map:     mapView
                case .preview: previewView
                case .done:    doneView
                }
            }
            .navigationTitle(stepTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if step == .pick {
                        Button("Cancel") { dismiss() }
                    } else if step != .done {
                        Button("Back") {
                            withAnimation { step = step == .map ? .pick : .map }
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    if step == .map {
                        Button("Preview") { buildPreview() }
                            .disabled(!canMap || selectedAccountID == nil)
                            .font(.system(size: 15, weight: .semibold))
                    } else if step == .preview {
                        Button("Import") { performImport() }
                            .font(.system(size: 15, weight: .semibold))
                            .foregroundColor(Color(hex: "#6366F1")!)
                    } else if step == .done {
                        Button("Done") { dismiss() }
                            .font(.system(size: 15, weight: .semibold))
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
        .fileImporter(
            isPresented: $showFilePicker,
            allowedContentTypes: [UTType.commaSeparatedText, UTType.plainText],
            allowsMultipleSelection: false
        ) { result in
            handleFilePick(result)
        }
    }

    var stepTitle: String {
        switch step {
        case .pick:    return "Import CSV"
        case .map:     return "Map Columns"
        case .preview: return "Preview (\(previewTransactions.count))"
        case .done:    return "Import Complete"
        }
    }

    // MARK: - Step 1: Pick File

    var pickView: some View {
        ScrollView {
            VStack(spacing: 24) {
                // Illustration
                VStack(spacing: 12) {
                    ZStack {
                        Circle()
                            .fill(Color(hex: "#6366F1")!.opacity(0.1))
                            .frame(width: 100, height: 100)
                        Image(systemName: "doc.text.below.ecg")
                            .font(.system(size: 44))
                            .foregroundColor(Color(hex: "#6366F1")!)
                    }
                    Text("Import Transactions from CSV")
                        .font(.system(size: 20, weight: .bold))
                    Text("Supports exports from most banks.\nYou'll map the columns in the next step.")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
                .padding(.top, 32)

                // How it works
                VStack(alignment: .leading, spacing: 14) {
                    Text("How it works")
                        .font(.system(size: 15, weight: .semibold))

                    ForEach([
                        ("1", "doc.text", "Select a CSV file from your device"),
                        ("2", "slider.horizontal.3", "Map columns to date, amount, payee"),
                        ("3", "checkmark.circle", "Review and confirm your transactions")
                    ], id: \.0) { num, icon, text in
                        HStack(spacing: 14) {
                            ZStack {
                                Circle()
                                    .fill(Color(hex: "#6366F1")!.opacity(0.15))
                                    .frame(width: 36, height: 36)
                                Image(systemName: icon)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color(hex: "#6366F1")!)
                            }
                            Text(text)
                                .font(.system(size: 14))
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .padding(16)
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 16))

                if let error = parseError {
                    HStack {
                        Image(systemName: "exclamationmark.triangle.fill")
                            .foregroundColor(.orange)
                        Text(error)
                            .font(.system(size: 13))
                            .foregroundColor(.orange)
                    }
                    .padding(12)
                    .background(Color.orange.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                Button {
                    showFilePicker = true
                } label: {
                    HStack {
                        Image(systemName: "folder.badge.plus")
                        Text("Choose CSV File")
                    }
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(
                        LinearGradient(
                            colors: [Color(hex: "#6366F1")!, Color(hex: "#8B5CF6")!],
                            startPoint: .leading, endPoint: .trailing
                        )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(color: Color(hex: "#6366F1")!.opacity(0.4), radius: 10, y: 4)
                }
            }
            .padding(20)
        }
        .background(Color(.systemGroupedBackground))
    }

    // MARK: - Step 2: Map Columns

    var mapView: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Preview of raw CSV
                VStack(alignment: .leading, spacing: 8) {
                    Text("Detected \(importedRows.count) rows, \(headers.count) columns")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.secondary)

                    ScrollView(.horizontal, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            // Header row
                            HStack(spacing: 0) {
                                ForEach(headers.indices, id: \.self) { i in
                                    Text(headers[i])
                                        .font(.system(size: 11, weight: .bold))
                                        .frame(width: 100, alignment: .leading)
                                        .padding(.vertical, 6)
                                        .padding(.horizontal, 8)
                                        .background(Color(hex: "#6366F1")!.opacity(0.1))
                                }
                            }
                            // Preview rows
                            ForEach(importedRows.prefix(3).indices, id: \.self) { rowIdx in
                                let row = importedRows[rowIdx]
                                HStack(spacing: 0) {
                                    ForEach(headers.indices, id: \.self) { colIdx in
                                        Text(colIdx < row.count ? row[colIdx] : "")
                                            .font(.system(size: 10))
                                            .lineLimit(1)
                                            .frame(width: 100, alignment: .leading)
                                            .padding(.vertical, 5)
                                            .padding(.horizontal, 8)
                                            .background(rowIdx % 2 == 0 ? Color.clear : Color(.systemGray6))
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(12)
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 14))

                // Column mapping
                VStack(spacing: 0) {
                    ColumnMapRow(label: "Date *", icon: "calendar", selectedIndex: $dateCol, headers: headers)
                    Divider().padding(.leading, 52)
                    ColumnMapRow(label: "Amount *", icon: "dollarsign.circle", selectedIndex: $amountCol, headers: headers)
                    Divider().padding(.leading, 52)
                    ColumnMapRow(label: "Payee *", icon: "person", selectedIndex: $payeeCol, headers: headers)
                    Divider().padding(.leading, 52)
                    ColumnMapRow(label: "Notes", icon: "note.text", selectedIndex: $notesCol, headers: headers, required: false)
                }
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 14))

                // Date format picker
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 12) {
                        Image(systemName: "calendar.badge.clock")
                            .font(.system(size: 15))
                            .foregroundColor(Color(hex: "#6366F1")!)
                            .frame(width: 28, height: 28)
                            .background(Color(hex: "#6366F1")!.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Date Format")
                            .font(.system(size: 15, weight: .medium))
                        Spacer()
                        Picker("", selection: $dateFormat) {
                            ForEach(dateFormats, id: \.self) { f in
                                Text(f).tag(f)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    Divider().padding(.leading, 52)
                    HStack(spacing: 12) {
                        Image(systemName: "arrow.left.arrow.right")
                            .font(.system(size: 15))
                            .foregroundColor(Color(hex: "#6366F1")!)
                            .frame(width: 28, height: 28)
                            .background(Color(hex: "#6366F1")!.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Default Type")
                            .font(.system(size: 15, weight: .medium))
                        Spacer()
                        Picker("", selection: $defaultType) {
                            ForEach([TransactionType.expense, .income], id: \.self) { t in
                                Text(t.rawValue).tag(t)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    Divider().padding(.leading, 52)
                    HStack(spacing: 12) {
                        Image(systemName: "creditcard")
                            .font(.system(size: 15))
                            .foregroundColor(Color(hex: "#6366F1")!)
                            .frame(width: 28, height: 28)
                            .background(Color(hex: "#6366F1")!.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Account *")
                            .font(.system(size: 15, weight: .medium))
                        Spacer()
                        Picker("", selection: $selectedAccountID) {
                            Text("Select").tag(UUID?.none)
                            ForEach(store.accounts) { acc in
                                Text(acc.name).tag(acc.id as UUID?)
                            }
                        }
                        .pickerStyle(.menu)
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                }
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 14))

                if !canMap || selectedAccountID == nil {
                    Text("* Date, Amount, Payee columns and an Account are required")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(16)
        }
        .background(Color(.systemGroupedBackground))
    }

    // MARK: - Step 3: Preview

    var previewView: some View {
        List {
            Section {
                HStack {
                    Label("\(previewTransactions.count) transactions ready to import", systemImage: "checkmark.circle.fill")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color(hex: "#10B981")!)
                }
            }
            Section("Preview") {
                ForEach(previewTransactions.prefix(20)) { tx in
                    HStack(spacing: 12) {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(tx.payee)
                                .font(.system(size: 14, weight: .medium))
                                .lineLimit(1)
                            Text(tx.date, format: .dateTime.month(.abbreviated).day().year())
                                .font(.system(size: 11))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Text(tx.displayAmount)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(tx.type == .income ? Color(hex: "#10B981")! : .primary)
                    }
                }
                if previewTransactions.count > 20 {
                    Text("+ \(previewTransactions.count - 20) more...")
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                }
            }
        }
        .listStyle(.insetGrouped)
    }

    // MARK: - Step 4: Done

    var doneView: some View {
        VStack(spacing: 24) {
            Spacer()
            ZStack {
                Circle()
                    .fill(Color(hex: "#10B981")!.opacity(0.1))
                    .frame(width: 110, height: 110)
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(Color(hex: "#10B981")!)
            }
            VStack(spacing: 8) {
                Text("Import Complete!")
                    .font(.system(size: 24, weight: .bold))
                Text("\(importedCount) transactions imported successfully.")
                    .font(.system(size: 15))
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color(.systemGroupedBackground))
    }

    // MARK: - Logic

    func handleFilePick(_ result: Result<[URL], Error>) {
        parseError = nil
        switch result {
        case .success(let urls):
            guard let url = urls.first else { return }
            let accessing = url.startAccessingSecurityScopedResource()
            defer { if accessing { url.stopAccessingSecurityScopedResource() } }
            do {
                let raw = try String(contentsOf: url, encoding: .utf8)
                parseCSV(raw)
            } catch {
                parseError = "Could not read file: \(error.localizedDescription)"
            }
        case .failure(let error):
            parseError = error.localizedDescription
        }
    }

    func parseCSV(_ raw: String) {
        let lines = raw.components(separatedBy: .newlines).filter { !$0.trimmingCharacters(in: .whitespaces).isEmpty }
        guard lines.count > 1 else {
            parseError = "CSV file appears to be empty or has only one row."
            return
        }
        headers = parseCSVLine(lines[0])
        importedRows = lines.dropFirst().map { parseCSVLine($0) }
        autoDetectColumns()
        selectedAccountID = store.accounts.first?.id
        withAnimation { step = .map }
    }

    func parseCSVLine(_ line: String) -> [String] {
        var result: [String] = []
        var current = ""
        var inQuotes = false
        for char in line {
            if char == "\"" {
                inQuotes.toggle()
            } else if char == "," && !inQuotes {
                result.append(current.trimmingCharacters(in: .whitespaces))
                current = ""
            } else {
                current.append(char)
            }
        }
        result.append(current.trimmingCharacters(in: .whitespaces))
        return result
    }

    func autoDetectColumns() {
        let lowered = headers.map { $0.lowercased() }
        dateCol = lowered.firstIndex { $0.contains("date") }
        amountCol = lowered.firstIndex { $0.contains("amount") || $0.contains("debit") || $0.contains("credit") }
        payeeCol = lowered.firstIndex { $0.contains("payee") || $0.contains("description") || $0.contains("merchant") || $0.contains("name") }
        notesCol = lowered.firstIndex { $0.contains("note") || $0.contains("memo") || $0.contains("reference") }
    }

    func buildPreview() {
        guard let dateC = dateCol, let amtC = amountCol, let payC = payeeCol,
              let accountID = selectedAccountID else { return }

        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat

        previewTransactions = importedRows.compactMap { row in
            guard dateC < row.count, amtC < row.count, payC < row.count else { return nil }
            guard let date = formatter.date(from: row[dateC]) else { return nil }
            let rawAmt = row[amtC].replacingOccurrences(of: "$", with: "").replacingOccurrences(of: ",", with: "")
            guard let amt = Double(rawAmt) else { return nil }
            let payee = row[payC].isEmpty ? "Unknown" : row[payC]
            let notes = notesCol.flatMap { $0 < row.count ? row[$0] : nil } ?? ""
            let type: TransactionType = amt < 0 ? .expense : (defaultType == .income ? .income : .expense)
            return Transaction(date: date, amount: amt, payee: payee, categoryID: nil, type: type, notes: notes, accountID: accountID)
        }

        withAnimation { step = .preview }
    }

    func performImport() {
        for tx in previewTransactions {
            store.addTransaction(tx)
        }
        importedCount = previewTransactions.count
        withAnimation { step = .done }
    }
}

// MARK: - Column Map Row

struct ColumnMapRow: View {
    let label: String
    let icon: String
    @Binding var selectedIndex: Int?
    let headers: [String]
    var required: Bool = true

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 15))
                .foregroundColor(Color(hex: "#6366F1")!)
                .frame(width: 28, height: 28)
                .background(Color(hex: "#6366F1")!.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8))

            Text(label)
                .font(.system(size: 15, weight: .medium))

            Spacer()

            Picker("", selection: $selectedIndex) {
                Text(required ? "Select" : "None").tag(Int?.none)
                ForEach(headers.indices, id: \.self) { i in
                    Text(headers[i]).tag(i as Int?)
                }
            }
            .pickerStyle(.menu)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
}
