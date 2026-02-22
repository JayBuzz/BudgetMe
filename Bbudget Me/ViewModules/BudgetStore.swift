// BudgetStore.swift
// Bbudget Me

import Foundation
import SwiftUI
import Combine

@MainActor
class BudgetStore: ObservableObject {

    // MARK: - Published State

    @Published var accounts: [Account] = []
    @Published var transactions: [Transaction] = []
    @Published var categories: [BudgetCategory] = []
    @Published var savingsGoals: [SavingsGoal] = []
    @Published var selectedPeriod: BudgetPeriod = .monthly
    @Published var selectedMonth: Date = Date()

    // MARK: - Storage Keys

    private let accountsKey = "bbudget_accounts"
    private let transactionsKey = "bbudget_transactions"
    private let categoriesKey = "bbudget_categories"
    private let goalsKey = "bbudget_goals"

    // MARK: - Init

    init() {
        load()
        if accounts.isEmpty && categories.isEmpty {
            seedSampleData()
        }
    }

    // MARK: - Computed Properties

    var currentMonthTransactions: [Transaction] {
        let calendar = Calendar.current
        return transactions.filter {
            calendar.isDate($0.date, equalTo: selectedMonth, toGranularity: .month)
        }
    }

    var totalIncome: Double {
        currentMonthTransactions
            .filter { $0.type == .income }
            .reduce(0) { $0 + $1.amount }
    }

    var totalExpenses: Double {
        currentMonthTransactions
            .filter { $0.type == .expense }
            .reduce(0) { $0 + abs($1.amount) }
    }

    var netCashFlow: Double {
        totalIncome - totalExpenses
    }

    var totalBalance: Double {
        accounts.reduce(0) { $0 + $1.balance }
    }

    var totalNetWorth: Double {
        accounts.reduce(0) { sum, acc in
            acc.type == .creditCard ? sum - acc.balance : sum + acc.balance
        }
    }

    func spending(for category: BudgetCategory) -> Double {
        currentMonthTransactions
            .filter { $0.categoryID == category.id && $0.type == .expense }
            .reduce(0) { $0 + abs($1.amount) }
    }

    func remaining(for category: BudgetCategory) -> Double {
        category.budgetAmount - spending(for: category)
    }

    func progress(for category: BudgetCategory) -> Double {
        guard category.budgetAmount > 0 else { return 0 }
        return min(spending(for: category) / category.budgetAmount, 1.0)
    }

    func transactions(for category: BudgetCategory) -> [Transaction] {
        currentMonthTransactions.filter { $0.categoryID == category.id }
    }

    func categoryName(for id: UUID?) -> String {
        guard let id = id else { return "Uncategorized" }
        return categories.first { $0.id == id }?.name ?? "Uncategorized"
    }

    func category(for id: UUID?) -> BudgetCategory? {
        guard let id = id else { return nil }
        return categories.first { $0.id == id }
    }

    // MARK: - Expense Breakdown

    func expenseBreakdown() -> [(category: BudgetCategory, amount: Double, percentage: Double)] {
        let total = totalExpenses
        return categories
            .filter { $0.type == .expense }
            .compactMap { cat in
                let amt = spending(for: cat)
                guard amt > 0 else { return nil }
                return (cat, amt, total > 0 ? amt / total : 0)
            }
            .sorted { $0.amount > $1.amount }
    }

    // MARK: - CRUD

    func addTransaction(_ tx: Transaction) {
        transactions.insert(tx, at: 0)
        // Update account balance
        if let idx = accounts.firstIndex(where: { $0.id == tx.accountID }) {
            switch tx.type {
            case .expense: accounts[idx].balance -= abs(tx.amount)
            case .income:  accounts[idx].balance += tx.amount
            case .transfer: break
            }
        }
        save()
    }

    func deleteTransaction(_ tx: Transaction) {
        // Reverse balance effect
        if let idx = accounts.firstIndex(where: { $0.id == tx.accountID }) {
            switch tx.type {
            case .expense: accounts[idx].balance += abs(tx.amount)
            case .income:  accounts[idx].balance -= tx.amount
            case .transfer: break
            }
        }
        transactions.removeAll { $0.id == tx.id }
        save()
    }

    func updateTransaction(_ tx: Transaction) {
        if let idx = transactions.firstIndex(where: { $0.id == tx.id }) {
            transactions[idx] = tx
        }
        save()
    }

    func addCategory(_ cat: BudgetCategory) {
        categories.append(cat)
        save()
    }

    func deleteCategory(_ cat: BudgetCategory) {
        categories.removeAll { $0.id == cat.id }
        save()
    }

    func addAccount(_ acc: Account) {
        accounts.append(acc)
        save()
    }

    func deleteAccount(_ acc: Account) {
        accounts.removeAll { $0.id == acc.id }
        save()
    }

    func addGoal(_ goal: SavingsGoal) {
        savingsGoals.append(goal)
        save()
    }

    func deleteGoal(_ goal: SavingsGoal) {
        savingsGoals.removeAll { $0.id == goal.id }
        save()
    }

    func updateGoal(_ goal: SavingsGoal) {
        if let idx = savingsGoals.firstIndex(where: { $0.id == goal.id }) {
            savingsGoals[idx] = goal
        }
        save()
    }

    // MARK: - Persistence

    func save() {
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(accounts) { UserDefaults.standard.set(data, forKey: accountsKey) }
        if let data = try? encoder.encode(transactions) { UserDefaults.standard.set(data, forKey: transactionsKey) }
        if let data = try? encoder.encode(categories) { UserDefaults.standard.set(data, forKey: categoriesKey) }
        if let data = try? encoder.encode(savingsGoals) { UserDefaults.standard.set(data, forKey: goalsKey) }
    }

    func load() {
        let decoder = JSONDecoder()
        if let data = UserDefaults.standard.data(forKey: accountsKey),
           let decoded = try? decoder.decode([Account].self, from: data) { accounts = decoded }
        if let data = UserDefaults.standard.data(forKey: transactionsKey),
           let decoded = try? decoder.decode([Transaction].self, from: data) { transactions = decoded }
        if let data = UserDefaults.standard.data(forKey: categoriesKey),
           let decoded = try? decoder.decode([BudgetCategory].self, from: data) { categories = decoded }
        if let data = UserDefaults.standard.data(forKey: goalsKey),
           let decoded = try? decoder.decode([SavingsGoal].self, from: data) { savingsGoals = decoded }
    }

    // MARK: - Sample Data

    func seedSampleData() {
        let checkingID = UUID()
        let savingsAccID = UUID()

        accounts = [
            Account(id: checkingID, name: "Chase Checking", type: .checking, balance: 4250.80, institution: "Chase", colorHex: "#1E40AF"),
            Account(id: savingsAccID, name: "High-Yield Savings", type: .savings, balance: 12500.00, institution: "Marcus", colorHex: "#065F46"),
            Account(id: UUID(), name: "Visa Credit Card", type: .creditCard, balance: 820.45, institution: "Chase", colorHex: "#7C3AED"),
        ]

        let catGroceries = BudgetCategory(id: UUID(), name: "Groceries", icon: "cart.fill", colorHex: "#16A34A", budgetAmount: 500, type: .expense)
        let catDining = BudgetCategory(id: UUID(), name: "Dining Out", icon: "fork.knife", colorHex: "#EA580C", budgetAmount: 300, type: .expense)
        let catTransport = BudgetCategory(id: UUID(), name: "Transport", icon: "car.fill", colorHex: "#2563EB", budgetAmount: 200, type: .expense)
        let catEntertain = BudgetCategory(id: UUID(), name: "Entertainment", icon: "tv.fill", colorHex: "#9333EA", budgetAmount: 150, type: .expense)
        let catHealth = BudgetCategory(id: UUID(), name: "Health", icon: "heart.fill", colorHex: "#DC2626", budgetAmount: 100, type: .expense)
        let catShopping = BudgetCategory(id: UUID(), name: "Shopping", icon: "bag.fill", colorHex: "#D97706", budgetAmount: 250, type: .expense)
        let catRent = BudgetCategory(id: UUID(), name: "Rent", icon: "house.fill", colorHex: "#0891B2", budgetAmount: 1500, type: .expense)
        let catUtilities = BudgetCategory(id: UUID(), name: "Utilities", icon: "bolt.fill", colorHex: "#4F46E5", budgetAmount: 150, type: .expense)
        let catSalary = BudgetCategory(id: UUID(), name: "Salary", icon: "dollarsign.circle.fill", colorHex: "#059669", budgetAmount: 5000, type: .income)
        let catFreelance = BudgetCategory(id: UUID(), name: "Freelance", icon: "laptopcomputer", colorHex: "#0284C7", budgetAmount: 1000, type: .income)

        categories = [catGroceries, catDining, catTransport, catEntertain, catHealth, catShopping, catRent, catUtilities, catSalary, catFreelance]

        let now = Date()
        let cal = Calendar.current

        func daysAgo(_ n: Int) -> Date {
            cal.date(byAdding: .day, value: -n, to: now) ?? now
        }

        transactions = [
            Transaction(date: daysAgo(0), amount: 5000, payee: "Employer Inc.", categoryID: catSalary.id, type: .income, notes: "Monthly salary", isRecurring: true, recurringFrequency: .monthly, accountID: checkingID),
            Transaction(date: daysAgo(1), amount: -1500, payee: "Landlord LLC", categoryID: catRent.id, type: .expense, notes: "Monthly rent", isRecurring: true, recurringFrequency: .monthly, accountID: checkingID),
            Transaction(date: daysAgo(2), amount: -87.50, payee: "Whole Foods", categoryID: catGroceries.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(3), amount: -42.00, payee: "Chipotle", categoryID: catDining.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(3), amount: -15.99, payee: "Netflix", categoryID: catEntertain.id, type: .expense, notes: "Monthly subscription", isRecurring: true, recurringFrequency: .monthly, accountID: checkingID),
            Transaction(date: daysAgo(4), amount: -62.10, payee: "Shell Gas Station", categoryID: catTransport.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(5), amount: -134.00, payee: "Trader Joe's", categoryID: catGroceries.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(6), amount: 800, payee: "Client Project", categoryID: catFreelance.id, type: .income, accountID: checkingID),
            Transaction(date: daysAgo(7), amount: -89.99, payee: "Amazon", categoryID: catShopping.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(8), amount: -38.50, payee: "Sushi Place", categoryID: catDining.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(9), amount: -120.00, payee: "Electric Company", categoryID: catUtilities.id, type: .expense, isRecurring: true, recurringFrequency: .monthly, accountID: checkingID),
            Transaction(date: daysAgo(10), amount: -25.00, payee: "CVS Pharmacy", categoryID: catHealth.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(11), amount: -9.99, payee: "Spotify", categoryID: catEntertain.id, type: .expense, isRecurring: true, recurringFrequency: .monthly, accountID: checkingID),
            Transaction(date: daysAgo(12), amount: -55.00, payee: "Uber", categoryID: catTransport.id, type: .expense, accountID: checkingID),
            Transaction(date: daysAgo(13), amount: -210.00, payee: "Nike Store", categoryID: catShopping.id, type: .expense, accountID: checkingID),
        ]

        savingsGoals = [
            SavingsGoal(name: "Emergency Fund", targetAmount: 10000, currentAmount: 6500, targetDate: cal.date(byAdding: .month, value: 6, to: now), icon: "shield.fill", colorHex: "#16A34A"),
            SavingsGoal(name: "Vacation", targetAmount: 3000, currentAmount: 1200, targetDate: cal.date(byAdding: .month, value: 8, to: now), icon: "airplane", colorHex: "#2563EB"),
            SavingsGoal(name: "New Laptop", targetAmount: 2500, currentAmount: 750, targetDate: cal.date(byAdding: .month, value: 4, to: now), icon: "laptopcomputer", colorHex: "#9333EA"),
        ]

        save()
    }
}
