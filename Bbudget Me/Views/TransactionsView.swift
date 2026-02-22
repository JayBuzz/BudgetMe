// TransactionsView.swift
// Bbudget Me

import SwiftUI

struct TransactionsView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var searchText = ""
    @State private var selectedType: TransactionType? = nil
    @State private var selectedCategoryID: UUID? = nil
    @State private var showFilters = false
    @State private var editMode = false
    @State private var selectedIDs: Set<UUID> = []
    @State private var showBulkActions = false

    var filtered: [Transaction] {
        store.transactions
            .filter { tx in
                let matchSearch = searchText.isEmpty ||
                    tx.payee.localizedCaseInsensitiveContains(searchText) ||
                    tx.notes.localizedCaseInsensitiveContains(searchText) ||
                    store.categoryName(for: tx.categoryID).localizedCaseInsensitiveContains(searchText)
                let matchType = selectedType == nil || tx.type == selectedType
                let matchCat = selectedCategoryID == nil || tx.categoryID == selectedCategoryID
                return matchSearch && matchType && matchCat
            }
            .sorted { $0.date > $1.date }
    }

    var groupedTransactions: [(String, [Transaction])] {
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d"
        let grouped = Dictionary(grouping: filtered) { tx -> String in
            let cal = Calendar.current
            if cal.isDateInToday(tx.date) { return "Today" }
            if cal.isDateInYesterday(tx.date) { return "Yesterday" }
            return df.string(from: tx.date)
        }
        return grouped.sorted { a, b in
            guard let t1 = filtered.first(where: { DateFormatter().string(from: $0.date) == a.0 || a.0 == "Today" || a.0 == "Yesterday" }),
                  let t2 = filtered.first(where: { DateFormatter().string(from: $0.date) == b.0 || b.0 == "Today" || b.0 == "Yesterday" }) else { return false }
            return t1.date > t2.date
        }
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                VStack(spacing: 12) {
                    HStack {
                        Text("Transactions")
                            .font(.system(size: 28, weight: .bold))
                        Spacer()
                        Button {
                            withAnimation { editMode.toggle(); selectedIDs.removeAll() }
                        } label: {
                            Text(editMode ? "Done" : "Select")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundColor(Color(hex: "#6366F1")!)
                        }
                    }

                    // Search bar
                    HStack(spacing: 10) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.secondary)
                        TextField("Search transactions...", text: $searchText)
                            .font(.system(size: 15))
                        if !searchText.isEmpty {
                            Button { searchText = "" } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                    // Filter pills
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            FilterPill(title: "All", isSelected: selectedType == nil) {
                                selectedType = nil
                            }
                            ForEach(TransactionType.allCases, id: \.self) { type in
                                FilterPill(title: type.rawValue, isSelected: selectedType == type) {
                                    selectedType = selectedType == type ? nil : type
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 16)
                .padding(.bottom, 12)
                .background(Color(.systemGroupedBackground))

                // Bulk action bar
                if editMode && !selectedIDs.isEmpty {
                    BulkActionBar(selectedCount: selectedIDs.count) {
                        // Delete selected
                        let toDelete = store.transactions.filter { selectedIDs.contains($0.id) }
                        toDelete.forEach { store.deleteTransaction($0) }
                        selectedIDs.removeAll()
                        editMode = false
                    }
                }

                // Transactions list
                if filtered.isEmpty {
                    Spacer()
                    VStack(spacing: 12) {
                        Image(systemName: "doc.text.magnifyingglass")
                            .font(.system(size: 48))
                            .foregroundColor(.secondary.opacity(0.5))
                        Text("No transactions found")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                } else {
                    List {
                        ForEach(groupedTransactions, id: \.0) { group, txs in
                            Section {
                                ForEach(txs) { tx in
                                    TransactionListRow(
                                        transaction: tx,
                                        editMode: editMode,
                                        isSelected: selectedIDs.contains(tx.id)
                                    ) {
                                        if selectedIDs.contains(tx.id) {
                                            selectedIDs.remove(tx.id)
                                        } else {
                                            selectedIDs.insert(tx.id)
                                        }
                                    }
                                    .swipeActions(edge: .trailing) {
                                        Button(role: .destructive) {
                                            store.deleteTransaction(tx)
                                        } label: {
                                            Label("Delete", systemImage: "trash")
                                        }
                                    }
                                }
                            } header: {
                                HStack {
                                    Text(group)
                                        .font(.system(size: 12, weight: .semibold))
                                        .foregroundColor(.secondary)
                                        .textCase(.none)
                                    Spacer()
                                    let dayTotal = txs.reduce(0.0) { sum, tx in
                                        tx.type == .income ? sum + tx.amount : sum - abs(tx.amount)
                                    }
                                    Text(dayTotal >= 0 ? "+\(dayTotal.formatted(.currency(code: "USD")))" : dayTotal.formatted(.currency(code: "USD")))
                                        .font(.system(size: 12, weight: .semibold))
                                        .foregroundColor(dayTotal >= 0 ? Color(hex: "#10B981")! : Color(hex: "#EF4444")!)
                                        .textCase(.none)
                                }
                            }
                        }
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .background(Color(.systemGroupedBackground))
            .navigationBarHidden(true)
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - Filter Pill

struct FilterPill: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(isSelected ? .white : .primary)
                .padding(.horizontal, 14)
                .padding(.vertical, 7)
                .background(isSelected ? Color(hex: "#6366F1")! : Color(.systemGray5))
                .clipShape(Capsule())
        }
    }
}

// MARK: - Transaction List Row

struct TransactionListRow: View {
    @EnvironmentObject var store: BudgetStore
    let transaction: Transaction
    let editMode: Bool
    let isSelected: Bool
    let onTap: () -> Void

    var category: BudgetCategory? { store.category(for: transaction.categoryID) }

    var body: some View {
        HStack(spacing: 12) {
            if editMode {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                    .font(.system(size: 22))
                    .foregroundColor(isSelected ? Color(hex: "#6366F1")! : .secondary)
                    .onTapGesture(perform: onTap)
            }

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill((category?.color ?? .gray).opacity(0.15))
                    .frame(width: 42, height: 42)
                Image(systemName: category?.icon ?? "questionmark.circle")
                    .font(.system(size: 17))
                    .foregroundColor(category?.color ?? .gray)
            }

            VStack(alignment: .leading, spacing: 3) {
                Text(transaction.payee)
                    .font(.system(size: 14, weight: .medium))
                    .lineLimit(1)
                HStack(spacing: 4) {
                    Text(store.categoryName(for: transaction.categoryID))
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                    if transaction.isRecurring {
                        Image(systemName: "repeat")
                            .font(.system(size: 9))
                            .foregroundColor(Color(hex: "#6366F1")!)
                    }
                    if !transaction.tags.isEmpty {
                        ForEach(transaction.tags.prefix(2), id: \.self) { tag in
                            Text(tag)
                                .font(.system(size: 9, weight: .medium))
                                .foregroundColor(Color(hex: "#6366F1")!)
                                .padding(.horizontal, 5)
                                .padding(.vertical, 1)
                                .background(Color(hex: "#6366F1")!.opacity(0.1))
                                .clipShape(Capsule())
                        }
                    }
                }
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                Text(transaction.displayAmount)
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundColor(transaction.type == .income ? Color(hex: "#10B981")! : .primary)
                Text(transaction.date, format: .dateTime.hour().minute())
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            if editMode { onTap() }
        }
    }
}

// MARK: - Bulk Action Bar

struct BulkActionBar: View {
    let selectedCount: Int
    let onDelete: () -> Void

    var body: some View {
        HStack {
            Text("\(selectedCount) selected")
                .font(.system(size: 14, weight: .medium))
            Spacer()
            Button {
                onDelete()
            } label: {
                Label("Delete", systemImage: "trash")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color(hex: "#EF4444")!)
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Color(.systemGray6))
    }
}
