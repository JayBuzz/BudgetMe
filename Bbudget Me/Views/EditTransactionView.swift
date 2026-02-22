// EditTransactionView.swift
// Bbudget Me

import SwiftUI

struct EditTransactionView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    let transaction: Transaction

    @State private var amount: String
    @State private var payee: String
    @State private var notes: String
    @State private var type: TransactionType
    @State private var selectedCategoryID: UUID?
    @State private var selectedAccountID: UUID?
    @State private var date: Date
    @State private var isRecurring: Bool
    @State private var recurringFrequency: RecurringFrequency
    @State private var tags: [String]
    @State private var tagInput = ""
    @State private var showDeleteConfirm = false

    init(transaction: Transaction) {
        self.transaction = transaction
        _amount = State(initialValue: String(format: "%.2f", abs(transaction.amount)))
        _payee = State(initialValue: transaction.payee)
        _notes = State(initialValue: transaction.notes)
        _type = State(initialValue: transaction.type)
        _selectedCategoryID = State(initialValue: transaction.categoryID)
        _selectedAccountID = State(initialValue: transaction.accountID)
        _date = State(initialValue: transaction.date)
        _isRecurring = State(initialValue: transaction.isRecurring)
        _recurringFrequency = State(initialValue: transaction.recurringFrequency ?? .monthly)
        _tags = State(initialValue: transaction.tags)
    }

    var filteredCategories: [BudgetCategory] {
        store.categories.filter { $0.type == type }
    }

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {

                    // Amount + type selector
                    VStack(spacing: 8) {
                        HStack(spacing: 0) {
                            ForEach(TransactionType.allCases, id: \.self) { t in
                                Button {
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        type = t
                                        selectedCategoryID = nil
                                    }
                                } label: {
                                    Text(t.rawValue)
                                        .font(.system(size: 14, weight: .semibold))
                                        .foregroundColor(type == t ? .white : .secondary)
                                        .frame(maxWidth: .infinity)
                                        .padding(.vertical, 10)
                                        .background(type == t ? typeColor(t) : Color.clear)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        .padding(4)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 14))

                        HStack(alignment: .center, spacing: 4) {
                            Text("$")
                                .font(.system(size: 32, weight: .light))
                                .foregroundColor(.secondary)
                            TextField("0.00", text: $amount)
                                .font(.system(size: 48, weight: .bold, design: .rounded))
                                .keyboardType(.decimalPad)
                                .multilineTextAlignment(.center)
                                .foregroundColor(typeColor(type))
                        }
                        .padding(.vertical, 8)
                    }
                    .padding(16)
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 18))

                    // Details
                    VStack(spacing: 0) {
                        FormRow(icon: "person.fill", label: "Payee") {
                            TextField("Payee", text: $payee)
                                .font(.system(size: 15))
                                .multilineTextAlignment(.trailing)
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "tag.fill", label: "Category") {
                            Picker("", selection: $selectedCategoryID) {
                                Text("None").tag(UUID?.none)
                                ForEach(filteredCategories) { cat in
                                    Text(cat.name).tag(cat.id as UUID?)
                                }
                            }
                            .pickerStyle(.menu)
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "creditcard.fill", label: "Account") {
                            Picker("", selection: $selectedAccountID) {
                                Text("None").tag(UUID?.none)
                                ForEach(store.accounts) { acc in
                                    Text(acc.name).tag(acc.id as UUID?)
                                }
                            }
                            .pickerStyle(.menu)
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "calendar", label: "Date") {
                            DatePicker("", selection: $date, displayedComponents: [.date])
                                .labelsHidden()
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "note.text", label: "Notes") {
                            TextField("Optional note", text: $notes)
                                .font(.system(size: 15))
                                .multilineTextAlignment(.trailing)
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "repeat", label: "Recurring") {
                            Toggle("", isOn: $isRecurring)
                                .tint(Color(hex: "#6366F1")!)
                        }

                        if isRecurring {
                            Divider().padding(.leading, 52)
                            FormRow(icon: "clock.arrow.2.circlepath", label: "Frequency") {
                                Picker("", selection: $recurringFrequency) {
                                    ForEach(RecurringFrequency.allCases, id: \.self) { f in
                                        Text(f.rawValue).tag(f)
                                    }
                                }
                                .pickerStyle(.menu)
                            }
                        }
                    }
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 18))

                    // Tags
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "number")
                                .foregroundColor(Color(hex: "#6366F1")!)
                                .frame(width: 20)
                            Text("Tags")
                                .font(.system(size: 15, weight: .medium))
                        }

                        if !tags.isEmpty {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 6) {
                                    ForEach(tags, id: \.self) { tag in
                                        HStack(spacing: 4) {
                                            Text(tag)
                                                .font(.system(size: 12, weight: .medium))
                                            Button {
                                                tags.removeAll { $0 == tag }
                                            } label: {
                                                Image(systemName: "xmark")
                                                    .font(.system(size: 10, weight: .bold))
                                            }
                                        }
                                        .foregroundColor(Color(hex: "#6366F1")!)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(hex: "#6366F1")!.opacity(0.12))
                                        .clipShape(Capsule())
                                    }
                                }
                            }
                        }

                        HStack {
                            TextField("Add tag...", text: $tagInput)
                                .font(.system(size: 14))
                                .onSubmit { addTag() }
                            Button("Add") { addTag() }
                                .font(.system(size: 13, weight: .medium))
                                .foregroundColor(Color(hex: "#6366F1")!)
                        }
                        .padding(10)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(16)
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 18))

                    // Save button
                    Button { saveTransaction() } label: {
                        Text("Save Changes")
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
                    .disabled(amount.isEmpty || selectedAccountID == nil)
                    .opacity(amount.isEmpty || selectedAccountID == nil ? 0.6 : 1)

                    // Delete button
                    Button(role: .destructive) {
                        showDeleteConfirm = true
                    } label: {
                        HStack {
                            Image(systemName: "trash")
                            Text("Delete Transaction")
                        }
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(Color(hex: "#EF4444")!)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color(hex: "#EF4444")!.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                    }

                    Spacer(minLength: 40)
                }
                .padding(16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Edit Transaction")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
            }
            .confirmationDialog("Delete this transaction?", isPresented: $showDeleteConfirm, titleVisibility: .visible) {
                Button("Delete", role: .destructive) {
                    store.deleteTransaction(transaction)
                    dismiss()
                }
            }
        }
        .navigationViewStyle(.stack)
    }

    func typeColor(_ t: TransactionType) -> Color {
        switch t {
        case .expense: return Color(hex: "#EF4444")!
        case .income:  return Color(hex: "#10B981")!
        case .transfer: return Color(hex: "#6366F1")!
        }
    }

    func addTag() {
        let trimmed = tagInput.trimmingCharacters(in: .whitespaces)
        if !trimmed.isEmpty { tags.append(trimmed); tagInput = "" }
    }

    func saveTransaction() {
        guard let amountValue = Double(amount), let accountID = selectedAccountID else { return }

        // Reverse old balance effect
        if let idx = store.accounts.firstIndex(where: { $0.id == transaction.accountID }) {
            switch transaction.type {
            case .expense: store.accounts[idx].balance += abs(transaction.amount)
            case .income:  store.accounts[idx].balance -= transaction.amount
            case .transfer: break
            }
        }

        var updated = transaction
        updated.amount = type == .expense ? -amountValue : amountValue
        updated.payee = payee.isEmpty ? "Unknown" : payee
        updated.categoryID = selectedCategoryID
        updated.type = type
        updated.notes = notes
        updated.tags = tags
        updated.isRecurring = isRecurring
        updated.recurringFrequency = isRecurring ? recurringFrequency : nil
        updated.date = date
        updated.accountID = accountID

        // Apply new balance effect
        if let idx = store.accounts.firstIndex(where: { $0.id == accountID }) {
            switch type {
            case .expense: store.accounts[idx].balance -= amountValue
            case .income:  store.accounts[idx].balance += amountValue
            case .transfer: break
            }
        }

        store.updateTransaction(updated)
        store.save()
        dismiss()
    }
}
