// SettingsView.swift
// Bbudget Me

import SwiftUI
import UIKit

struct SettingsView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var showExportSheet = false
    @State private var showCSVImport = false
    @State private var showResetConfirm = false
    @State private var showClearTransactionsConfirm = false
    @State private var exportedCSV: String = ""
    @State private var showExportPreview = false
    @State private var currencyCode = "USD"
    @AppStorage("bbudget_default_currency") private var storedCurrency = "USD"
    @AppStorage("bbudget_show_cents") private var showCents = true
    @AppStorage("bbudget_dark_mode") private var darkModeOverride = false

    var body: some View {
        NavigationView {
            List {
                // MARK: Data Management
                Section {
                    SettingsRow(icon: "square.and.arrow.down", color: "#6366F1", title: "Import CSV") {
                        showCSVImport = true
                    }
                    SettingsRow(icon: "square.and.arrow.up", color: "#10B981", title: "Export Transactions as CSV") {
                        exportToCSV()
                    }
                } header: {
                    Text("Data")
                }

                // MARK: Display
                Section {
                    HStack {
                        Image(systemName: "dollarsign.circle.fill")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color(hex: "#F59E0B")!)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Currency")
                        Spacer()
                        Picker("", selection: $storedCurrency) {
                            ForEach(["USD", "EUR", "GBP", "AUD", "CAD", "JPY", "INR"], id: \.self) { c in
                                Text(c).tag(c)
                            }
                        }
                        .pickerStyle(.menu)
                    }

                    HStack {
                        Image(systemName: "centsign.circle.fill")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color(hex: "#0891B2")!)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Toggle("Show Cents", isOn: $showCents)
                    }
                } header: {
                    Text("Display")
                }

                // MARK: Danger Zone
                Section {
                    SettingsRow(icon: "trash", color: "#F59E0B", title: "Clear All Transactions") {
                        showClearTransactionsConfirm = true
                    }
                    SettingsRow(icon: "arrow.counterclockwise", color: "#EF4444", title: "Reset All Data") {
                        showResetConfirm = true
                    }
                } header: {
                    Text("Danger Zone")
                } footer: {
                    Text("Reset All Data removes all accounts, transactions, categories, and goals.")
                }

                // MARK: About
                Section {
                    HStack {
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color(hex: "#6366F1")!)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Version")
                        Spacer()
                        Text("1.0")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Image(systemName: "shippingbox.fill")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color(hex: "#8B5CF6")!)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Accounts")
                        Spacer()
                        Text("\(store.accounts.count)")
                            .foregroundColor(.secondary)
                    }

                    HStack {
                        Image(systemName: "list.bullet.rectangle.fill")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(Color(hex: "#0891B2")!)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Text("Total Transactions")
                        Spacer()
                        Text("\(store.transactions.count)")
                            .foregroundColor(.secondary)
                    }
                } header: {
                    Text("About")
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
            .sheet(isPresented: $showCSVImport) {
                CSVImportView().environmentObject(store)
            }
            .sheet(isPresented: $showExportPreview) {
                CSVExportPreviewView(csv: exportedCSV)
            }
            .confirmationDialog("Clear all transactions?", isPresented: $showClearTransactionsConfirm, titleVisibility: .visible) {
                Button("Clear All Transactions", role: .destructive) {
                    for tx in store.transactions { store.deleteTransaction(tx) }
                }
            } message: {
                Text("This cannot be undone. Account balances will be adjusted.")
            }
            .confirmationDialog("Reset all data?", isPresented: $showResetConfirm, titleVisibility: .visible) {
                Button("Reset Everything", role: .destructive) {
                    store.accounts = []
                    store.transactions = []
                    store.categories = []
                    store.savingsGoals = []
                    store.save()
                    #if DEBUG
                    store.seedSampleData()
                    #endif
                }
            } message: {
                #if DEBUG
                Text("All data will be cleared and replaced with sample data. This cannot be undone.")
                #else
                Text("All data will be cleared. This cannot be undone.")
                #endif
            }
        }
        .navigationViewStyle(.stack)
    }

    func exportToCSV() {
        var lines = ["Date,Payee,Category,Type,Amount,Notes,Account,Tags"]
        for tx in store.transactions.sorted(by: { $0.date > $1.date }) {
            let df = DateFormatter(); df.dateFormat = "MM/dd/yyyy"
            let date = df.string(from: tx.date)
            let payee = "\"\(tx.payee.replacingOccurrences(of: "\"", with: "\"\""))\""
            let category = store.categoryName(for: tx.categoryID)
            let type = tx.type.rawValue
            let amount = String(format: "%.2f", tx.amount)
            let notes = "\"\(tx.notes.replacingOccurrences(of: "\"", with: "\"\""))\""
            let account = store.accounts.first(where: { $0.id == tx.accountID })?.name ?? ""
            let tags = tx.tags.joined(separator: "|")
            lines.append("\(date),\(payee),\(category),\(type),\(amount),\(notes),\(account),\(tags)")
        }
        exportedCSV = lines.joined(separator: "\n")
        showExportPreview = true
    }
}

// MARK: - Settings Row

struct SettingsRow: View {
    let icon: String
    let color: String
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .background(Color(hex: color)!)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                Text(title)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(.systemGray3))
            }
        }
    }
}

// MARK: - Activity View (iOS 15 share fallback)

struct ActivityView: UIViewControllerRepresentable {
    var activityItems: [Any]

    func makeUIViewController(context: Context) -> UIActivityViewController {
        UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
    }

    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {}
}

// MARK: - CSV Export Preview

struct CSVExportPreviewView: View {
    @Environment(\.dismiss) var dismiss
    let csv: String
    @State private var showActivitySheet = false

    private var shareButtonLabel: some View {
        HStack {
            Image(systemName: "square.and.arrow.up")
            Text("Share / Save CSV")
        }
        .font(.system(size: 17, weight: .semibold))
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(
            LinearGradient(
                colors: [Color(hex: "#10B981")!, Color(hex: "#059669")!],
                startPoint: .leading, endPoint: .trailing
            )
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    @ViewBuilder
    private var shareButton: some View {
        if #available(iOS 16.0, *) {
            ShareLink(item: csv, preview: SharePreview("Bbudget Me Transactions", image: Image(systemName: "doc.text"))) {
                shareButtonLabel
            }
        } else {
            Button {
                showActivitySheet = true
            } label: {
                shareButtonLabel
            }
        }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    HStack(spacing: 12) {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.system(size: 28))
                            .foregroundColor(Color(hex: "#10B981")!)
                        VStack(alignment: .leading) {
                            Text("Export Ready")
                                .font(.system(size: 17, weight: .semibold))
                            Text("\(csv.components(separatedBy: "\n").count - 1) transactions")
                                .font(.system(size: 13))
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(hex: "#10B981")!.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 14))

                    Text("CSV Preview")
                        .font(.system(size: 15, weight: .semibold))

                    ScrollView(.horizontal, showsIndicators: true) {
                        Text(csv.components(separatedBy: "\n").prefix(15).joined(separator: "\n"))
                            .font(.system(size: 11, design: .monospaced))
                            .foregroundColor(.secondary)
                            .padding(12)
                    }
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                    // Share sheet trigger
                    shareButton
                }
                .padding(16)
            }
            .sheet(isPresented: $showActivitySheet) {
                ActivityView(activityItems: [csv])
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Export CSV")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
