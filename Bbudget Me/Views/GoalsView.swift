// GoalsView.swift
// Bbudget Me

import SwiftUI

struct GoalsView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var showAddGoal = false
    @State private var selectedGoal: SavingsGoal? = nil

    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 16) {
                    if store.savingsGoals.isEmpty {
                        EmptyStateView(
                            icon: "target",
                            title: "No savings goals yet",
                            subtitle: "Set a goal to track your progress toward something meaningful"
                        )
                        .padding(.top, 40)
                        .padding(.horizontal, 16)
                    } else {
                        // Summary
                        GoalsSummaryHeader()
                            .padding(.horizontal, 16)

                        ForEach(store.savingsGoals) { goal in
                            GoalCard(goal: goal)
                                .padding(.horizontal, 16)
                                .onTapGesture { selectedGoal = goal }
                        }
                    }

                    Spacer(minLength: 100)
                }
                .padding(.top, 16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Goals")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddGoal = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color(hex: "#6366F1")!)
                    }
                }
            }
            .sheet(isPresented: $showAddGoal) {
                AddGoalView()
                    .environmentObject(store)
            }
            .sheet(item: $selectedGoal) { goal in
                GoalDetailView(goal: goal)
                    .environmentObject(store)
            }
        }
    }
}

// MARK: - Goals Summary

struct GoalsSummaryHeader: View {
    @EnvironmentObject var store: BudgetStore

    var totalTarget: Double { store.savingsGoals.reduce(0) { $0 + $1.targetAmount } }
    var totalSaved: Double { store.savingsGoals.reduce(0) { $0 + $1.currentAmount } }
    var overallProgress: Double { totalTarget > 0 ? totalSaved / totalTarget : 0 }

    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading, spacing: 4) {
                Text("Total Saved")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.secondary)
                Text(totalSaved.formatted(.currency(code: "USD")))
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(Color(hex: "#10B981")!)
            }
            Spacer()
            VStack(alignment: .trailing, spacing: 4) {
                Text("Total Goal")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.secondary)
                Text(totalTarget.formatted(.currency(code: "USD")))
                    .font(.system(size: 24, weight: .bold, design: .rounded))
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.05), radius: 8, y: 2)
    }
}

// MARK: - Goal Card

struct GoalCard: View {
    let goal: SavingsGoal

    var daysRemaining: Int? {
        guard let target = goal.targetDate else { return nil }
        let days = Calendar.current.dateComponents([.day], from: Date(), to: target).day
        return days.flatMap { $0 > 0 ? $0 : nil }
    }

    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 14) {
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [goal.color.opacity(0.8), goal.color],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 52, height: 52)
                    Image(systemName: goal.icon)
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                }

                VStack(alignment: .leading, spacing: 3) {
                    Text(goal.name)
                        .font(.system(size: 16, weight: .semibold))
                    if let days = daysRemaining {
                        Label("\(days) days left", systemImage: "calendar")
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 3) {
                    Text("\(Int(goal.progress * 100))%")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(goal.color)
                    Text("complete")
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                }
            }

            // Progress ring + bar
            VStack(spacing: 8) {
                GeometryReader { geo in
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(.systemGray5))
                            .frame(height: 14)
                        RoundedRectangle(cornerRadius: 8)
                            .fill(
                                LinearGradient(
                                    colors: [goal.color.opacity(0.7), goal.color],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: geo.size.width * CGFloat(goal.progress), height: 14)
                    }
                }
                .frame(height: 14)

                HStack {
                    Text(goal.currentAmount.formatted(.currency(code: "USD")))
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundColor(goal.color)
                    Spacer()
                    Text(goal.targetAmount.formatted(.currency(code: "USD")))
                        .font(.system(size: 13))
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(color: goal.color.opacity(0.12), radius: 12, y: 4)
    }
}

// MARK: - Goal Detail View

struct GoalDetailView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss
    var goal: SavingsGoal

    @State private var depositAmount = ""
    @State private var showDeleteConfirm = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // Visual progress
                    ZStack {
                        Circle()
                            .stroke(Color(.systemGray5), lineWidth: 16)
                            .frame(width: 160, height: 160)
                        Circle()
                            .trim(from: 0, to: CGFloat(goal.progress))
                            .stroke(
                                LinearGradient(colors: [goal.color.opacity(0.6), goal.color],
                                               startPoint: .topLeading, endPoint: .bottomTrailing),
                                style: StrokeStyle(lineWidth: 16, lineCap: .round)
                            )
                            .rotationEffect(.degrees(-90))
                            .frame(width: 160, height: 160)
                        VStack(spacing: 2) {
                            Image(systemName: goal.icon)
                                .font(.system(size: 24))
                                .foregroundColor(goal.color)
                            Text("\(Int(goal.progress * 100))%")
                                .font(.system(size: 28, weight: .bold, design: .rounded))
                        }
                    }
                    .padding(.top, 20)

                    // Stats
                    HStack(spacing: 12) {
                        GoalStatCard(title: "Saved", value: goal.currentAmount.formatted(.currency(code: "USD")), color: goal.color)
                        GoalStatCard(title: "Remaining", value: (goal.targetAmount - goal.currentAmount).formatted(.currency(code: "USD")), color: .secondary)
                        GoalStatCard(title: "Target", value: goal.targetAmount.formatted(.currency(code: "USD")), color: .primary)
                    }
                    .padding(.horizontal, 16)

                    // Add funds
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Add Funds")
                            .font(.system(size: 16, weight: .semibold))

                        HStack {
                            Text("$")
                                .font(.system(size: 20, weight: .medium))
                                .foregroundColor(.secondary)
                            TextField("Amount", text: $depositAmount)
                                .font(.system(size: 20))
                                .keyboardType(.decimalPad)
                        }
                        .padding(14)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                        Button {
                            if let amount = Double(depositAmount), amount > 0 {
                                var updated = goal
                                updated.currentAmount = min(updated.currentAmount + amount, updated.targetAmount)
                                store.updateGoal(updated)
                                depositAmount = ""
                                dismiss()
                            }
                        } label: {
                            Text("Add to Goal")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14)
                                .background(
                                    LinearGradient(colors: [goal.color.opacity(0.8), goal.color],
                                                   startPoint: .leading, endPoint: .trailing)
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                    .padding(16)
                    .background(Color(.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal, 16)

                    Button(role: .destructive) {
                        showDeleteConfirm = true
                    } label: {
                        Label("Delete Goal", systemImage: "trash")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(Color(hex: "#EF4444")!)
                    }
                    .padding(.top, 8)
                }
                .padding(.bottom, 40)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle(goal.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
            .confirmationDialog("Delete this goal?", isPresented: $showDeleteConfirm, titleVisibility: .visible) {
                Button("Delete", role: .destructive) {
                    store.deleteGoal(goal)
                    dismiss()
                }
            }
        }
    }
}

struct GoalStatCard: View {
    let title: String
    let value: String
    let color: Color

    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(color == .secondary ? .secondary : color == .primary ? .primary : color)
                .lineLimit(1)
                .minimumScaleFactor(0.7)
            Text(title)
                .font(.system(size: 11))
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - Add Goal View

struct AddGoalView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var name = ""
    @State private var targetAmount = ""
    @State private var currentAmount = ""
    @State private var hasTargetDate = false
    @State private var targetDate = Calendar.current.date(byAdding: .month, value: 6, to: Date()) ?? Date()
    @State private var selectedIcon = "star.fill"
    @State private var selectedColor = "#10B981"

    let icons = ["shield.fill", "airplane", "house.fill", "car.fill", "graduationcap.fill",
                 "heart.fill", "star.fill", "gift.fill", "creditcard.fill", "bag.fill",
                 "laptopcomputer", "camera.fill", "music.note", "gamecontroller.fill", "dumbbell"]

    let colors = ["#10B981", "#3B82F6", "#6366F1", "#8B5CF6", "#EC4899",
                  "#EF4444", "#F59E0B", "#14B8A6", "#F97316", "#84CC16"]

    var body: some View {
        NavigationStack {
            Form {
                Section("Goal Info") {
                    TextField("Goal Name", text: $name)
                    HStack {
                        Text("Target Amount")
                        Spacer()
                        TextField("$0.00", text: $targetAmount)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text("Current Savings")
                        Spacer()
                        TextField("$0.00", text: $currentAmount)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                    }
                    Toggle("Set Target Date", isOn: $hasTargetDate)
                    if hasTargetDate {
                        DatePicker("Target Date", selection: $targetDate, displayedComponents: .date)
                    }
                }

                Section("Icon") {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5), spacing: 12) {
                        ForEach(icons, id: \.self) { ic in
                            Button {
                                selectedIcon = ic
                            } label: {
                                Image(systemName: ic)
                                    .font(.system(size: 20))
                                    .foregroundColor(selectedIcon == ic ? .white : Color(hex: selectedColor)!)
                                    .frame(width: 44, height: 44)
                                    .background(selectedIcon == ic ? Color(hex: selectedColor)! : Color(hex: selectedColor)!.opacity(0.15))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }

                Section("Color") {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5), spacing: 10) {
                        ForEach(colors, id: \.self) { c in
                            Button { selectedColor = c } label: {
                                Circle()
                                    .fill(Color(hex: c)!)
                                    .frame(width: 40, height: 40)
                                    .overlay(
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 14, weight: .bold))
                                            .foregroundColor(.white)
                                            .opacity(selectedColor == c ? 1 : 0)
                                    )
                            }
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("New Goal")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        let target = Double(targetAmount) ?? 0
                        let current = Double(currentAmount) ?? 0
                        let goal = SavingsGoal(
                            name: name,
                            targetAmount: target,
                            currentAmount: min(current, target),
                            targetDate: hasTargetDate ? targetDate : nil,
                            icon: selectedIcon,
                            colorHex: selectedColor
                        )
                        store.addGoal(goal)
                        dismiss()
                    }
                    .disabled(name.isEmpty || targetAmount.isEmpty)
                    .font(.system(size: 15, weight: .semibold))
                }
            }
        }
    }
}
