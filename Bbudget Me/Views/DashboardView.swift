// DashboardView.swift
// Bbudget Me

import SwiftUI

struct DashboardView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var showMonthPicker = false

    var monthFormatter: DateFormatter {
        let f = DateFormatter()
        f.dateFormat = "MMMM yyyy"
        return f
    }

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    // Header gradient hero
                    HeroHeaderView()
                        .padding(.bottom, 16)

                    VStack(spacing: 20) {
                        // Month selector
                        MonthSelectorView()

                        // Key Metrics Row
                        HStack(spacing: 12) {
                            MetricCard(
                                title: "Income",
                                value: store.totalIncome,
                                icon: "arrow.down.circle.fill",
                                color: Color(hex: "#10B981")!,
                                isPositive: true
                            )
                            MetricCard(
                                title: "Expenses",
                                value: store.totalExpenses,
                                icon: "arrow.up.circle.fill",
                                color: Color(hex: "#EF4444")!,
                                isPositive: false
                            )
                        }

                        // Net Cash Flow Card
                        CashFlowCard()

                        // Budget Progress
                        if !store.categories.filter({ $0.type == .expense }).isEmpty {
                            BudgetOverviewCard()
                        }

                        // Expense Breakdown Chart
                        if !store.expenseBreakdown().isEmpty {
                            ExpenseBreakdownCard()
                        }

                        // Savings Goals Preview
                        if !store.savingsGoals.isEmpty {
                            GoalsPreviewCard()
                        }

                        // Recent Transactions
                        RecentTransactionsCard()
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 100)
                }
            }
            .background(Color(.systemGroupedBackground))
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Hero Header

struct HeroHeaderView: View {
    @EnvironmentObject var store: BudgetStore

    var body: some View {
        ZStack(alignment: .bottom) {
            // Gradient background
            LinearGradient(
                colors: [Color(hex: "#4F46E5")!, Color(hex: "#7C3AED")!, Color(hex: "#9333EA")!],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .frame(height: 240)

            // Decorative circles
            Circle()
                .fill(Color.white.opacity(0.06))
                .frame(width: 200, height: 200)
                .offset(x: 100, y: -60)

            Circle()
                .fill(Color.white.opacity(0.04))
                .frame(width: 150, height: 150)
                .offset(x: -80, y: 20)

            VStack(spacing: 6) {
                Text("Net Worth")
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.white.opacity(0.7))
                    .textCase(.uppercase)
                    .tracking(1.5)

                Text(store.totalNetWorth.formatted(.currency(code: "USD")))
                    .font(.system(size: 38, weight: .bold, design: .rounded))
                    .foregroundColor(.white)

                HStack(spacing: 6) {
                    Image(systemName: store.netCashFlow >= 0 ? "arrow.up.right" : "arrow.down.right")
                    Text("\(store.netCashFlow >= 0 ? "+" : "")\(store.netCashFlow.formatted(.currency(code: "USD"))) this month")
                        .font(.system(size: 13, weight: .medium))
                }
                .foregroundColor(store.netCashFlow >= 0 ? Color(hex: "#6EE7B7")! : Color(hex: "#FCA5A5")!)
                .padding(.top, 2)
            }
            .padding(.bottom, 30)
        }
        .clipShape(RoundedRectangle(cornerRadius: 0))
    }
}

// MARK: - Month Selector

struct MonthSelectorView: View {
    @EnvironmentObject var store: BudgetStore

    var body: some View {
        HStack {
            Button {
                store.selectedMonth = Calendar.current.date(byAdding: .month, value: -1, to: store.selectedMonth) ?? store.selectedMonth
            } label: {
                Image(systemName: "chevron.left")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.secondary)
                    .frame(width: 32, height: 32)
                    .background(Color(.systemBackground))
                    .clipShape(Circle())
            }

            Spacer()

            Text(store.selectedMonth, format: .dateTime.month(.wide).year())
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.primary)

            Spacer()

            Button {
                store.selectedMonth = Calendar.current.date(byAdding: .month, value: 1, to: store.selectedMonth) ?? store.selectedMonth
            } label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(.secondary)
                    .frame(width: 32, height: 32)
                    .background(Color(.systemBackground))
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal, 8)
    }
}

// MARK: - Metric Card

struct MetricCard: View {
    let title: String
    let value: Double
    let icon: String
    let color: Color
    let isPositive: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 16))
                    .foregroundColor(color)
                Spacer()
                Text(title)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.secondary)
            }

            Text(value.formatted(.currency(code: "USD")))
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.primary)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
        .frame(maxWidth: .infinity)
    }
}

// MARK: - Cash Flow Card

struct CashFlowCard: View {
    @EnvironmentObject var store: BudgetStore

    var savingsRate: Double {
        guard store.totalIncome > 0 else { return 0 }
        return max(store.netCashFlow / store.totalIncome, 0)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Cash Flow")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Label(store.netCashFlow >= 0 ? "On Track" : "Over Budget",
                      systemImage: store.netCashFlow >= 0 ? "checkmark.circle.fill" : "exclamationmark.triangle.fill")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(store.netCashFlow >= 0 ? Color(hex: "#10B981")! : Color(hex: "#EF4444")!)
            }

            // Bar chart visualization
            HStack(spacing: 3) {
                // Income bar
                VStack(alignment: .leading, spacing: 4) {
                    Text("Income")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundColor(.secondary)
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(.systemGray6))
                            .frame(height: 28)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(hex: "#10B981")!)
                            .frame(width: .infinity, height: 28)
                    }
                    Text(store.totalIncome.formatted(.currency(code: "USD")))
                        .font(.system(size: 12, weight: .semibold))
                }
                .frame(maxWidth: .infinity)

                Image(systemName: "minus")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .padding(.top, 16)

                // Expenses bar
                VStack(alignment: .leading, spacing: 4) {
                    Text("Expenses")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundColor(.secondary)
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(.systemGray6))
                            .frame(height: 28)
                        RoundedRectangle(cornerRadius: 4)
                            .fill(Color(hex: "#EF4444")!)
                            .frame(
                                width: store.totalIncome > 0 ?
                                    CGFloat(min(store.totalExpenses / store.totalIncome, 1.0)) * .infinity : 0,
                                height: 28
                            )
                    }
                    Text(store.totalExpenses.formatted(.currency(code: "USD")))
                        .font(.system(size: 12, weight: .semibold))
                }
                .frame(maxWidth: .infinity)

                Image(systemName: "equal")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .padding(.top, 16)

                // Net
                VStack(alignment: .leading, spacing: 4) {
                    Text("Net")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundColor(.secondary)
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(store.netCashFlow >= 0 ? Color(hex: "#D1FAE5")! : Color(hex: "#FEE2E2")!)
                            .frame(height: 28)
                    }
                    Text(store.netCashFlow.formatted(.currency(code: "USD")))
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(store.netCashFlow >= 0 ? Color(hex: "#059669")! : Color(hex: "#DC2626")!)
                }
                .frame(maxWidth: .infinity)
            }

            if store.totalIncome > 0 {
                HStack {
                    Text("Savings Rate")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("\(Int(savingsRate * 100))%")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(savingsRate >= 0.2 ? Color(hex: "#10B981")! : .orange)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

// MARK: - Budget Overview Card

struct BudgetOverviewCard: View {
    @EnvironmentObject var store: BudgetStore

    var expenseCategories: [BudgetCategory] {
        store.categories.filter { $0.type == .expense }.sorted { store.spending(for: $0) > store.spending(for: $1) }.prefix(4).map { $0 }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text("Budget Overview")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                NavigationLink("See All") {
                    BudgetView()
                        .navigationBarTitleDisplayMode(.inline)
                }
                .font(.system(size: 13))
                .foregroundColor(Color(hex: "#6366F1")!)
            }

            ForEach(expenseCategories) { cat in
                BudgetProgressRow(category: cat)
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

struct BudgetProgressRow: View {
    @EnvironmentObject var store: BudgetStore
    let category: BudgetCategory

    var isOverBudget: Bool { store.remaining(for: category) < 0 }
    var progress: Double { store.progress(for: category) }

    var body: some View {
        VStack(spacing: 6) {
            HStack {
                Image(systemName: category.icon)
                    .font(.system(size: 13))
                    .foregroundColor(category.color)
                    .frame(width: 24, height: 24)
                    .background(category.color.opacity(0.15))
                    .clipShape(Circle())

                Text(category.name)
                    .font(.system(size: 13, weight: .medium))

                Spacer()

                VStack(alignment: .trailing, spacing: 1) {
                    Text(store.spending(for: category).formatted(.currency(code: "USD")))
                        .font(.system(size: 13, weight: .semibold))
                    Text("of \(category.budgetAmount.formatted(.currency(code: "USD")))")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                }
            }

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color(.systemGray5))
                        .frame(height: 6)
                    RoundedRectangle(cornerRadius: 4)
                        .fill(isOverBudget ? Color(hex: "#EF4444")! : category.color)
                        .frame(width: geo.size.width * CGFloat(min(progress, 1.0)), height: 6)
                }
            }
            .frame(height: 6)
        }
    }
}

// MARK: - Expense Breakdown Card

struct ExpenseBreakdownCard: View {
    @EnvironmentObject var store: BudgetStore

    var breakdown: [(category: BudgetCategory, amount: Double, percentage: Double)] {
        Array(store.expenseBreakdown().prefix(5))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Spending Breakdown")
                .font(.system(size: 16, weight: .semibold))

            ForEach(breakdown, id: \.category.id) { item in
                HStack(spacing: 10) {
                    Image(systemName: item.category.icon)
                        .font(.system(size: 12))
                        .foregroundColor(item.category.color)
                        .frame(width: 28, height: 28)
                        .background(item.category.color.opacity(0.12))
                        .clipShape(RoundedRectangle(cornerRadius: 8))

                    Text(item.category.name)
                        .font(.system(size: 13))

                    Spacer()

                    // Percentage bar
                    GeometryReader { geo in
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 3)
                                .fill(Color(.systemGray5))
                                .frame(height: 6)
                            RoundedRectangle(cornerRadius: 3)
                                .fill(item.category.color)
                                .frame(width: geo.size.width * CGFloat(item.percentage), height: 6)
                        }
                    }
                    .frame(width: 80, height: 6)

                    Text("\(Int(item.percentage * 100))%")
                        .font(.system(size: 11, weight: .medium))
                        .foregroundColor(.secondary)
                        .frame(width: 32, alignment: .trailing)

                    Text(item.amount.formatted(.currency(code: "USD")))
                        .font(.system(size: 13, weight: .semibold))
                        .frame(width: 70, alignment: .trailing)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

// MARK: - Goals Preview Card

struct GoalsPreviewCard: View {
    @EnvironmentObject var store: BudgetStore

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text("Savings Goals")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
            }

            ForEach(store.savingsGoals.prefix(3)) { goal in
                HStack(spacing: 12) {
                    ZStack {
                        Circle()
                            .fill(goal.color.opacity(0.15))
                            .frame(width: 36, height: 36)
                        Image(systemName: goal.icon)
                            .font(.system(size: 15))
                            .foregroundColor(goal.color)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        HStack {
                            Text(goal.name)
                                .font(.system(size: 13, weight: .medium))
                            Spacer()
                            Text("\(Int(goal.progress * 100))%")
                                .font(.system(size: 12, weight: .semibold))
                                .foregroundColor(goal.color)
                        }
                        GeometryReader { geo in
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(Color(.systemGray5))
                                    .frame(height: 6)
                                RoundedRectangle(cornerRadius: 4)
                                    .fill(goal.color)
                                    .frame(width: geo.size.width * CGFloat(goal.progress), height: 6)
                            }
                        }
                        .frame(height: 6)
                        Text("\(goal.currentAmount.formatted(.currency(code: "USD"))) of \(goal.targetAmount.formatted(.currency(code: "USD")))")
                            .font(.system(size: 10))
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

// MARK: - Recent Transactions Card

struct RecentTransactionsCard: View {
    @EnvironmentObject var store: BudgetStore

    var recent: [Transaction] {
        Array(store.transactions.sorted { $0.date > $1.date }.prefix(5))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text("Recent Transactions")
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
            }

            ForEach(recent) { tx in
                TransactionRowView(transaction: tx)
                if tx.id != recent.last?.id {
                    Divider()
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

struct TransactionRowView: View {
    @EnvironmentObject var store: BudgetStore
    let transaction: Transaction

    var category: BudgetCategory? {
        store.category(for: transaction.categoryID)
    }

    var body: some View {
        HStack(spacing: 12) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill((category?.color ?? .gray).opacity(0.15))
                    .frame(width: 40, height: 40)
                Image(systemName: category?.icon ?? "questionmark.circle")
                    .font(.system(size: 16))
                    .foregroundColor(category?.color ?? .gray)
            }

            VStack(alignment: .leading, spacing: 2) {
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
                            .foregroundColor(.secondary)
                    }
                }
            }

            Spacer()

            VStack(alignment: .trailing, spacing: 2) {
                Text(transaction.displayAmount)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(transaction.type == .income ? Color(hex: "#10B981")! : .primary)
                Text(transaction.date, format: .dateTime.month(.abbreviated).day())
                    .font(.system(size: 11))
                    .foregroundColor(.secondary)
            }
        }
    }
}
