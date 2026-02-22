// BudgetView.swift
// Bbudget Me

import SwiftUI

struct BudgetView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var showAddCategory = false
    @State private var selectedCategory: BudgetCategory? = nil

    var expenseCategories: [BudgetCategory] {
        store.categories.filter { $0.type == .expense }
    }

    var incomeCategories: [BudgetCategory] {
        store.categories.filter { $0.type == .income }
    }

    var totalBudgeted: Double {
        expenseCategories.reduce(0) { $0 + $1.budgetAmount }
    }

    var totalSpent: Double {
        expenseCategories.reduce(0) { $0 + store.spending(for: $1) }
    }

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // Summary header
                    BudgetSummaryHeader(totalBudgeted: totalBudgeted, totalSpent: totalSpent)

                    // Expense categories
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Expense Categories")
                                .font(.system(size: 18, weight: .bold))
                            Spacer()
                            Button {
                                showAddCategory = true
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 22))
                                    .foregroundColor(Color(hex: "#6366F1")!)
                            }
                        }
                        .padding(.horizontal, 16)

                        ForEach(expenseCategories) { cat in
                            BudgetCategoryCard(category: cat)
                                .onTapGesture { selectedCategory = cat }
                                .padding(.horizontal, 16)
                        }

                        if expenseCategories.isEmpty {
                            EmptyStateView(
                                icon: "tray",
                                title: "No expense categories",
                                subtitle: "Tap + to add your first budget category"
                            )
                            .padding(.horizontal, 16)
                        }
                    }

                    // Income categories
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Income Categories")
                            .font(.system(size: 18, weight: .bold))
                            .padding(.horizontal, 16)

                        ForEach(incomeCategories) { cat in
                            IncomeCategoryCard(category: cat)
                                .padding(.horizontal, 16)
                        }
                    }

                    Spacer(minLength: 100)
                }
                .padding(.top, 20)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Budget")
            .navigationBarTitleDisplayMode(.inline)
            .opaqueNavigationBarIfAvailable()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddCategory = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color(hex: "#6366F1")!)
                    }
                }
            }
            .sheet(isPresented: $showAddCategory) {
                AddCategoryView()
                    .environmentObject(store)
            }
            .sheet(item: $selectedCategory) { cat in
                CategoryDetailView(category: cat)
                    .environmentObject(store)
            }
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - Budget Summary Header

struct BudgetSummaryHeader: View {
    let totalBudgeted: Double
    let totalSpent: Double

    var remaining: Double { totalBudgeted - totalSpent }
    var progress: Double { totalBudgeted > 0 ? min(totalSpent / totalBudgeted, 1.0) : 0 }
    var isOverBudget: Bool { totalSpent > totalBudgeted }

    var body: some View {
        VStack(spacing: 16) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Total Budgeted")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.secondary)
                    Text(totalBudgeted.formatted(.currency(code: "USD")))
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 4) {
                    Text("Remaining")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.secondary)
                    Text(remaining.formatted(.currency(code: "USD")))
                        .font(.system(size: 22, weight: .bold, design: .rounded))
                        .foregroundColor(isOverBudget ? Color(hex: "#EF4444")! : Color(hex: "#10B981")!)
                }
            }

            VStack(spacing: 6) {
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 6)
                            .fill(Color(.systemGray5))
                            .frame(height: 10)
                        RoundedRectangle(cornerRadius: 6)
                            .fill(
                                LinearGradient(
                                    colors: isOverBudget ?
                                        [Color(hex: "#EF4444")!, Color(hex: "#DC2626")!] :
                                        [Color(hex: "#6366F1")!, Color(hex: "#8B5CF6")!],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: geo.size.width * CGFloat(progress), height: 10)
                    }
                }
                .frame(height: 10)

                HStack {
                    Text("Spent: \(totalSpent.formatted(.currency(code: "USD")))")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("\(Int(progress * 100))%")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(isOverBudget ? Color(hex: "#EF4444")! : Color(hex: "#6366F1")!)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
        .padding(.horizontal, 16)
    }
}

// MARK: - Budget Category Card

struct BudgetCategoryCard: View {
    @EnvironmentObject var store: BudgetStore
    let category: BudgetCategory

    var spent: Double { store.spending(for: category) }
    var remaining: Double { store.remaining(for: category) }
    var progress: Double { store.progress(for: category) }
    var isOverBudget: Bool { remaining < 0 }

    var statusColor: Color {
        if isOverBudget { return Color(hex: "#EF4444")! }
        if progress > 0.8 { return Color(hex: "#F59E0B")! }
        return Color(hex: "#10B981")!
    }

    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 12) {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(category.color.opacity(0.15))
                        .frame(width: 46, height: 46)
                    Image(systemName: category.icon)
                        .font(.system(size: 20))
                        .foregroundColor(category.color)
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text(category.name)
                        .font(.system(size: 15, weight: .semibold))
                    Text("\(store.transactions(for: category).count) transactions")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 2) {
                    Text(remaining >= 0 ? "\(remaining.formatted(.currency(code: "USD"))) left" : "Over by \(abs(remaining).formatted(.currency(code: "USD")))")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(statusColor)
                    Text("Budget: \(category.budgetAmount.formatted(.currency(code: "USD")))")
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                }
            }

            VStack(spacing: 4) {
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color(.systemGray5))
                            .frame(height: 8)
                        RoundedRectangle(cornerRadius: 5)
                            .fill(
                                LinearGradient(
                                    colors: isOverBudget ?
                                        [Color(hex: "#EF4444")!, Color(hex: "#DC2626")!] :
                                        progress > 0.8 ?
                                        [Color(hex: "#F59E0B")!, Color(hex: "#D97706")!] :
                                        [category.color.opacity(0.8), category.color],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: geo.size.width * CGFloat(min(progress, 1.0)), height: 8)
                    }
                }
                .frame(height: 8)

                HStack {
                    Text("Spent \(spent.formatted(.currency(code: "USD")))")
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("\(Int(progress * 100))%")
                        .font(.system(size: 11, weight: .medium))
                        .foregroundColor(statusColor)
                }
            }
        }
        .padding(14)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(
                    isOverBudget ? Color(hex: "#EF4444")!.opacity(0.3) : Color.clear,
                    lineWidth: 1.5
                )
        )
        .shadow(color: .black.opacity(0.04), radius: 6, y: 2)
    }
}

// MARK: - Income Category Card

struct IncomeCategoryCard: View {
    @EnvironmentObject var store: BudgetStore
    let category: BudgetCategory

    var earned: Double {
        store.currentMonthTransactions
            .filter { $0.categoryID == category.id && $0.type == .income }
            .reduce(0) { $0 + $1.amount }
    }

    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(category.color.opacity(0.15))
                    .frame(width: 46, height: 46)
                Image(systemName: category.icon)
                    .font(.system(size: 20))
                    .foregroundColor(category.color)
            }

            VStack(alignment: .leading, spacing: 2) {
                Text(category.name)
                    .font(.system(size: 15, weight: .semibold))
                Text("Target: \(category.budgetAmount.formatted(.currency(code: "USD")))")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                Text(earned.formatted(.currency(code: "USD")))
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color(hex: "#10B981")!)
                Text("earned")
                    .font(.system(size: 11))
                    .foregroundColor(.secondary)
            }
        }
        .padding(14)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.04), radius: 6, y: 2)
    }
}

// MARK: - Empty State

struct EmptyStateView: View {
    let icon: String
    let title: String
    let subtitle: String

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.secondary.opacity(0.4))
            Text(title)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.secondary)
            Text(subtitle)
                .font(.system(size: 13))
                .foregroundColor(.secondary.opacity(0.7))
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(30)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

// MARK: - Category Detail View

struct CategoryDetailView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss
    let category: BudgetCategory

    var transactions: [Transaction] {
        store.transactions(for: category).sorted { $0.date > $1.date }
    }

    var body: some View {
        NavigationView {
            List {
                Section {
                    BudgetCategoryCard(category: category)
                        .listRowInsets(EdgeInsets())
                        .listRowBackground(Color.clear)
                }

                Section("Transactions") {
                    if transactions.isEmpty {
                        Text("No transactions this month")
                            .foregroundColor(.secondary)
                            .font(.system(size: 14))
                    } else {
                        ForEach(transactions) { tx in
                            TransactionListRow(transaction: tx, editMode: false, isSelected: false, onTap: {})
                        }
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle(category.name)
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

// MARK: - Add Category View

struct AddCategoryView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var name = ""
    @State private var icon = "star.fill"
    @State private var colorHex = "#6366F1"
    @State private var budgetAmount = ""
    @State private var type: TransactionType = .expense

    let icons = ["house.fill", "car.fill", "cart.fill", "fork.knife", "bolt.fill", "heart.fill",
                 "tv.fill", "airplane", "bag.fill", "dumbbell", "book.fill", "music.note",
                 "gamecontroller.fill", "dog.fill", "scissors", "bandage.fill", "dollarsign.circle.fill",
                 "laptopcomputer", "phone.fill", "graduationcap.fill"]

    let colors = ["#EF4444", "#F59E0B", "#10B981", "#3B82F6", "#6366F1", "#8B5CF6",
                  "#EC4899", "#14B8A6", "#F97316", "#84CC16", "#06B6D4", "#A855F7"]

    var body: some View {
        NavigationView {
            Form {
                Section("Category Info") {
                    TextField("Category Name", text: $name)
                    Picker("Type", selection: $type) {
                        ForEach(TransactionType.allCases, id: \.self) { t in
                            Text(t.rawValue).tag(t)
                        }
                    }
                    HStack {
                        Text("Budget Amount")
                        Spacer()
                        TextField("$0.00", text: $budgetAmount)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                    }
                }

                Section("Icon") {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5), spacing: 12) {
                        ForEach(icons, id: \.self) { ic in
                            Button {
                                icon = ic
                            } label: {
                                Image(systemName: ic)
                                    .font(.system(size: 20))
                                    .foregroundColor(icon == ic ? .white : Color(hex: colorHex)!)
                                    .frame(width: 44, height: 44)
                                    .background(icon == ic ? Color(hex: colorHex)! : Color(hex: colorHex)!.opacity(0.15))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }

                Section("Color") {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 6), spacing: 10) {
                        ForEach(colors, id: \.self) { c in
                            Button {
                                colorHex = c
                            } label: {
                                Circle()
                                    .fill(Color(hex: c)!)
                                    .frame(width: 36, height: 36)
                                    .overlay(
                                        Circle()
                                            .strokeBorder(Color.white, lineWidth: colorHex == c ? 3 : 0)
                                    )
                                    .overlay(
                                        Circle()
                                            .strokeBorder(Color(hex: c)!, lineWidth: colorHex == c ? 2 : 0)
                                            .scaleEffect(1.15)
                                    )
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("New Category")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        let amount = Double(budgetAmount) ?? 0
                        let cat = BudgetCategory(name: name, icon: icon, colorHex: colorHex, budgetAmount: amount, type: type)
                        store.addCategory(cat)
                        dismiss()
                    }
                    .disabled(name.isEmpty)
                    .font(.system(size: 15, weight: .semibold))
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}
