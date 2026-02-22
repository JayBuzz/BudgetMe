// AddTransactionView.swift
// Bbudget Me

import SwiftUI

struct AddTransactionView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var amount = ""
    @State private var payee = ""
    @State private var notes = ""
    @State private var type: TransactionType = .expense
    @State private var selectedCategoryID: UUID? = nil
    @State private var selectedAccountID: UUID? = nil
    @State private var date = Date()
    @State private var isRecurring = false
    @State private var recurringFrequency: RecurringFrequency = .monthly
    @State private var tagInput = ""
    @State private var tags: [String] = []

    var filteredCategories: [BudgetCategory] {
        store.categories.filter { $0.type == type }
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Amount input - large and prominent
                    VStack(spacing: 8) {
                        // Type selector
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
                                        .background(
                                            type == t ?
                                            typeColor(t) :
                                            Color.clear
                                        )
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                }
                            }
                        }
                        .padding(4)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 14))

                        // Amount display
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
                            TextField("Who is this with?", text: $payee)
                                .font(.system(size: 15))
                                .multilineTextAlignment(.trailing)
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "tag.fill", label: "Category") {
                            if filteredCategories.isEmpty {
                                Text("No categories")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 15))
                            } else {
                                Picker("", selection: $selectedCategoryID) {
                                    Text("None").tag(UUID?.none)
                                    ForEach(filteredCategories) { cat in
                                        HStack {
                                            Image(systemName: cat.icon)
                                            Text(cat.name)
                                        }
                                        .tag(cat.id as UUID?)
                                    }
                                }
                                .pickerStyle(.menu)
                            }
                        }
                        Divider().padding(.leading, 52)

                        FormRow(icon: "creditcard.fill", label: "Account") {
                            if store.accounts.isEmpty {
                                Text("No accounts")
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 15))
                            } else {
                                Picker("", selection: $selectedAccountID) {
                                    Text("None").tag(UUID?.none)
                                    ForEach(store.accounts) { acc in
                                        Text(acc.name).tag(acc.id as UUID?)
                                    }
                                }
                                .pickerStyle(.menu)
                            }
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
                                .onSubmit {
                                    if !tagInput.isEmpty {
                                        tags.append(tagInput.trimmingCharacters(in: .whitespaces))
                                        tagInput = ""
                                    }
                                }
                            Button("Add") {
                                if !tagInput.isEmpty {
                                    tags.append(tagInput.trimmingCharacters(in: .whitespaces))
                                    tagInput = ""
                                }
                            }
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
                    Button {
                        saveTransaction()
                    } label: {
                        Text("Save Transaction")
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

                    Spacer(minLength: 40)
                }
                .padding(16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("New Transaction")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
            }
            .onAppear {
                selectedAccountID = store.accounts.first?.id
                selectedCategoryID = filteredCategories.first?.id
            }
        }
    }

    func typeColor(_ t: TransactionType) -> Color {
        switch t {
        case .expense: return Color(hex: "#EF4444")!
        case .income: return Color(hex: "#10B981")!
        case .transfer: return Color(hex: "#6366F1")!
        }
    }

    func saveTransaction() {
        guard let amountValue = Double(amount),
              let accountID = selectedAccountID else { return }

        let tx = Transaction(
            date: date,
            amount: type == .expense ? -amountValue : amountValue,
            payee: payee.isEmpty ? "Unknown" : payee,
            categoryID: selectedCategoryID,
            type: type,
            notes: notes,
            tags: tags,
            isRecurring: isRecurring,
            recurringFrequency: isRecurring ? recurringFrequency : nil,
            accountID: accountID
        )
        store.addTransaction(tx)
        dismiss()
    }
}

// MARK: - Form Row

struct FormRow<Content: View>: View {
    let icon: String
    let label: String
    @ViewBuilder let content: () -> Content

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

            content()
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
    }
}
