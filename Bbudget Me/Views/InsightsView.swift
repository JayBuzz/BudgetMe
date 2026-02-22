// InsightsView.swift
// Bbudget Me

import SwiftUI
import Charts

struct InsightsView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var selectedInsight: InsightTab = .spending

    enum InsightTab: String, CaseIterable {
        case spending = "Spending"
        case income = "Income"
        case cashFlow = "Cash Flow"
        case categories = "Categories"
    }

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // Tab selector
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8) {
                            ForEach(InsightTab.allCases, id: \.self) { tab in
                                Button {
                                    withAnimation(.easeInOut(duration: 0.2)) { selectedInsight = tab }
                                } label: {
                                    Text(tab.rawValue)
                                        .font(.system(size: 13, weight: .semibold))
                                        .foregroundColor(selectedInsight == tab ? .white : .primary)
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 8)
                                        .background(selectedInsight == tab ? Color(hex: "#6366F1")! : Color(.systemGray5))
                                        .clipShape(Capsule())
                                }
                            }
                        }
                        .padding(.horizontal, 16)
                    }

                    // Content
                    switch selectedInsight {
                    case .spending:   SpendingTrendChart()
                    case .income:     IncomeTrendChart()
                    case .cashFlow:   CashFlowChart()
                    case .categories: CategoryBreakdownChart()
                    }

                    // Summary stats
                    InsightsSummaryCards()

                    Spacer(minLength: 100)
                }
                .padding(.top, 16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Insights")
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - Monthly Data Helper

struct MonthlyDataPoint: Identifiable {
    let id = UUID()
    let month: Date
    let amount: Double
    var label: String {
        let f = DateFormatter(); f.dateFormat = "MMM"; return f.string(from: month)
    }
}

func last6MonthsData(store: BudgetStore, type: TransactionType) -> [MonthlyDataPoint] {
    let cal = Calendar.current
    let now = Date()
    return (0..<6).reversed().compactMap { offset -> MonthlyDataPoint? in
        guard let month = cal.date(byAdding: .month, value: -offset, to: now) else { return nil }
        let comps = cal.dateComponents([.year, .month], from: month)
        let total = store.transactions
            .filter { tx in
                let tComps = cal.dateComponents([.year, .month], from: tx.date)
                return tComps.year == comps.year && tComps.month == comps.month && tx.type == type
            }
            .reduce(0) { $0 + abs($1.amount) }
        return MonthlyDataPoint(month: month, amount: total)
    }
}

// MARK: - Spending Trend Chart

struct SpendingTrendChart: View {
    @EnvironmentObject var store: BudgetStore

    var data: [MonthlyDataPoint] { last6MonthsData(store: store, type: .expense) }
    var maxVal: Double { data.map(\.amount).max() ?? 1 }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Monthly Spending")
                    .font(.system(size: 17, weight: .semibold))
                Text("Last 6 months")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }

            if #available(iOS 16.0, *) {
                Chart(data) { point in
                    BarMark(
                        x: .value("Month", point.label),
                        y: .value("Amount", point.amount)
                    )
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(hex: "#6366F1")!.opacity(0.7), Color(hex: "#8B5CF6")!],
                            startPoint: .bottom, endPoint: .top
                        )
                    )
                    .cornerRadius(6)
                }
                .chartYAxis {
                    AxisMarks(position: .leading) { val in
                        AxisValueLabel {
                            if let d = val.as(Double.self) {
                                Text("$\(Int(d/1000))k")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                            }
                        }
                        AxisGridLine(stroke: StrokeStyle(lineWidth: 0.5, dash: [4]))
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                .frame(height: 200)
            } else {
                FallbackBarChart(data: data, color: Color(hex: "#6366F1")!)
            }

            // Trend indicator
            if data.count >= 2 {
                let last = data.last?.amount ?? 0
                let prev = data.dropLast().last?.amount ?? 0
                let delta = prev > 0 ? (last - prev) / prev : 0
                HStack(spacing: 6) {
                    Image(systemName: delta <= 0 ? "arrow.down.circle.fill" : "arrow.up.circle.fill")
                        .foregroundColor(delta <= 0 ? Color(hex: "#10B981")! : Color(hex: "#EF4444")!)
                    Text(delta <= 0 ? "Spending down \(Int(abs(delta)*100))% vs last month" : "Spending up \(Int(delta*100))% vs last month")
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
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

// MARK: - Income Trend Chart

struct IncomeTrendChart: View {
    @EnvironmentObject var store: BudgetStore
    var data: [MonthlyDataPoint] { last6MonthsData(store: store, type: .income) }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Monthly Income")
                    .font(.system(size: 17, weight: .semibold))
                Text("Last 6 months")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }

            if #available(iOS 16.0, *) {
                Chart(data) { point in
                    LineMark(
                        x: .value("Month", point.label),
                        y: .value("Amount", point.amount)
                    )
                    .foregroundStyle(Color(hex: "#10B981")!)
                    .lineStyle(StrokeStyle(lineWidth: 3))
                    AreaMark(
                        x: .value("Month", point.label),
                        y: .value("Amount", point.amount)
                    )
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color(hex: "#10B981")!.opacity(0.3), Color(hex: "#10B981")!.opacity(0.0)],
                            startPoint: .top, endPoint: .bottom
                        )
                    )
                    PointMark(
                        x: .value("Month", point.label),
                        y: .value("Amount", point.amount)
                    )
                    .foregroundStyle(Color(hex: "#10B981")!)
                    .symbolSize(40)
                }
                .chartYAxis {
                    AxisMarks(position: .leading) { val in
                        AxisValueLabel {
                            if let d = val.as(Double.self) {
                                Text("$\(Int(d/1000))k")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                            }
                        }
                        AxisGridLine(stroke: StrokeStyle(lineWidth: 0.5, dash: [4]))
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                .frame(height: 200)
            } else {
                FallbackBarChart(data: data, color: Color(hex: "#10B981")!)
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
        .padding(.horizontal, 16)
    }
}

// MARK: - Cash Flow Chart

struct CashFlowChart: View {
    @EnvironmentObject var store: BudgetStore

    struct CashFlowPoint: Identifiable {
        let id = UUID()
        let label: String
        let income: Double
        let expenses: Double
        var net: Double { income - expenses }
    }

    var data: [CashFlowPoint] {
        let cal = Calendar.current
        let now = Date()
        return (0..<6).reversed().compactMap { offset -> CashFlowPoint? in
            guard let month = cal.date(byAdding: .month, value: -offset, to: now) else { return nil }
            let comps = cal.dateComponents([.year, .month], from: month)
            let income = store.transactions.filter {
                let c = cal.dateComponents([.year,.month], from: $0.date)
                return c.year == comps.year && c.month == comps.month && $0.type == .income
            }.reduce(0) { $0 + $1.amount }
            let expenses = store.transactions.filter {
                let c = cal.dateComponents([.year,.month], from: $0.date)
                return c.year == comps.year && c.month == comps.month && $0.type == .expense
            }.reduce(0) { $0 + abs($1.amount) }
            let f = DateFormatter(); f.dateFormat = "MMM"
            return CashFlowPoint(label: f.string(from: month), income: income, expenses: expenses)
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Cash Flow")
                    .font(.system(size: 17, weight: .semibold))
                Text("Income vs expenses, last 6 months")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
            }

            if #available(iOS 16.0, *) {
                Chart {
                    ForEach(data) { point in
                        BarMark(x: .value("Month", point.label), y: .value("Amount", point.income))
                            .foregroundStyle(Color(hex: "#10B981")!.opacity(0.8))
                            .position(by: .value("Type", "Income"))
                            .cornerRadius(4)
                        BarMark(x: .value("Month", point.label), y: .value("Amount", point.expenses))
                            .foregroundStyle(Color(hex: "#EF4444")!.opacity(0.8))
                            .position(by: .value("Type", "Expenses"))
                            .cornerRadius(4)
                    }
                }
                .chartForegroundStyleScale([
                    "Income": Color(hex: "#10B981")!,
                    "Expenses": Color(hex: "#EF4444")!
                ])
                .chartLegend(position: .top, alignment: .trailing)
                .chartYAxis {
                    AxisMarks(position: .leading) { val in
                        AxisValueLabel {
                            if let d = val.as(Double.self) {
                                Text("$\(Int(d/1000))k")
                                    .font(.system(size: 10))
                                    .foregroundColor(.secondary)
                            }
                        }
                        AxisGridLine(stroke: StrokeStyle(lineWidth: 0.5, dash: [4]))
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                .frame(height: 220)
            } else {
                Text("Cash flow chart requires iOS 16+")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                    .frame(height: 120)
            }

            // Net row
            HStack(spacing: 12) {
                ForEach(data.suffix(3)) { pt in
                    VStack(spacing: 2) {
                        Text(pt.label)
                            .font(.system(size: 11))
                            .foregroundColor(.secondary)
                        Text(pt.net >= 0 ? "+$\(Int(pt.net))" : "-$\(Int(abs(pt.net)))")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundColor(pt.net >= 0 ? Color(hex: "#10B981")! : Color(hex: "#EF4444")!)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .background(pt.net >= 0 ? Color(hex: "#D1FAE5")! : Color(hex: "#FEE2E2")!)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
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

// MARK: - Category Breakdown Placeholder (iOS 15/16)

struct CategoryBreakdownPlaceholder: View {
    let breakdown: [(category: BudgetCategory, amount: Double, percentage: Double)]

    var body: some View {
        VStack(spacing: 8) {
            ForEach(breakdown.prefix(6), id: \.category.id) { item in
                GeometryReader { geo in
                    HStack(spacing: 8) {
                        RoundedRectangle(cornerRadius: 4)
                            .fill(item.category.color)
                            .frame(width: max(0, geo.size.width * CGFloat(item.percentage)))
                        Spacer(minLength: 0)
                    }
                }
                .frame(height: 20)
            }
        }
    }
}

// MARK: - Category Breakdown Chart

struct CategoryBreakdownChart: View {
    @EnvironmentObject var store: BudgetStore

    var breakdown: [(category: BudgetCategory, amount: Double, percentage: Double)] {
        store.expenseBreakdown()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Spending by Category")
                .font(.system(size: 17, weight: .semibold))

            if #available(iOS 17.0, *) {
                Chart(breakdown, id: \.category.id) { item in
                    SectorMark(
                        angle: .value("Amount", item.amount),
                        innerRadius: .ratio(0.55),
                        angularInset: 2
                    )
                    .foregroundStyle(item.category.color)
                    .cornerRadius(4)
                }
                .frame(height: 200)
            } else {
                // iOS 15/16: show a simple stacked bar placeholder
                CategoryBreakdownPlaceholder(breakdown: breakdown)
                    .frame(height: 200)
            }

            // Legend
            VStack(spacing: 10) {
                ForEach(breakdown.prefix(6), id: \.category.id) { item in
                    HStack(spacing: 12) {
                        Circle()
                            .fill(item.category.color)
                            .frame(width: 10, height: 10)
                        Image(systemName: item.category.icon)
                            .font(.system(size: 12))
                            .foregroundColor(item.category.color)
                        Text(item.category.name)
                            .font(.system(size: 13))
                        Spacer()
                        Text("\(Int(item.percentage * 100))%")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(.secondary)
                        Text(item.amount.formatted(.currency(code: "USD")))
                            .font(.system(size: 13, weight: .semibold))
                            .frame(width: 72, alignment: .trailing)
                    }
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

// MARK: - Summary Cards

struct InsightsSummaryCards: View {
    @EnvironmentObject var store: BudgetStore

    var avgMonthlySpend: Double {
        let data = last6MonthsData(store: store, type: .expense)
        let nonZero = data.filter { $0.amount > 0 }
        return nonZero.isEmpty ? 0 : nonZero.reduce(0) { $0 + $1.amount } / Double(nonZero.count)
    }

    var topCategory: BudgetCategory? {
        store.expenseBreakdown().first?.category
    }

    var savingsRate: Double {
        guard store.totalIncome > 0 else { return 0 }
        return max(store.netCashFlow / store.totalIncome, 0)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("This Month at a Glance")
                .font(.system(size: 17, weight: .semibold))
                .padding(.horizontal, 16)

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 12) {
                InsightStatCard(
                    title: "Avg Monthly Spend",
                    value: avgMonthlySpend.formatted(.currency(code: "USD")),
                    icon: "chart.bar.fill",
                    color: Color(hex: "#6366F1")!
                )
                InsightStatCard(
                    title: "Savings Rate",
                    value: "\(Int(savingsRate * 100))%",
                    icon: "arrow.up.right.circle.fill",
                    color: savingsRate >= 0.2 ? Color(hex: "#10B981")! : .orange
                )
                InsightStatCard(
                    title: "Top Category",
                    value: topCategory?.name ?? "—",
                    icon: topCategory?.icon ?? "tag.fill",
                    color: topCategory?.color ?? .gray
                )
                InsightStatCard(
                    title: "Transactions",
                    value: "\(store.currentMonthTransactions.count)",
                    icon: "list.bullet.rectangle.fill",
                    color: Color(hex: "#0891B2")!
                )
            }
            .padding(.horizontal, 16)
        }
    }
}

struct InsightStatCard: View {
    let title: String
    let value: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(color)
                .frame(width: 36, height: 36)
                .background(color.opacity(0.15))
                .clipShape(RoundedRectangle(cornerRadius: 10))

            Text(value)
                .font(.system(size: 16, weight: .bold))
                .lineLimit(1)
                .minimumScaleFactor(0.7)

            Text(title)
                .font(.system(size: 11))
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(14)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.04), radius: 6, y: 2)
    }
}

// MARK: - Fallback Bar Chart (iOS 15)

struct FallbackBarChart: View {
    let data: [MonthlyDataPoint]
    let color: Color

    var maxVal: Double { data.map(\.amount).max() ?? 1 }

    var body: some View {
        HStack(alignment: .bottom, spacing: 8) {
            ForEach(data) { point in
                VStack(spacing: 4) {
                    Text(point.amount.formatted(.currency(code: "USD").precision(.fractionLength(0))))
                        .font(.system(size: 8))
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)

                    RoundedRectangle(cornerRadius: 4)
                        .fill(color)
                        .frame(height: max(4, 120 * CGFloat(point.amount / maxVal)))

                    Text(point.label)
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity)
            }
        }
        .frame(height: 160)
    }
}
