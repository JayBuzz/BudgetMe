// ContentView.swift
// Bbudget Me

import SwiftUI

struct ContentView: View {
    @StateObject private var store = BudgetStore()
    @State private var selectedTab = 0
    @State private var showAddTransaction = false

    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                DashboardView()
                    .tag(0)

                TransactionsView()
                    .tag(1)

                BudgetView()
                    .tag(2)

                GoalsView()
                    .tag(3)

                AccountsView()
                    .tag(4)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))

            // Custom Tab Bar
            CustomTabBar(selectedTab: $selectedTab, showAddTransaction: $showAddTransaction)
        }
        .environmentObject(store)
        .sheet(isPresented: $showAddTransaction) {
            AddTransactionView()
                .environmentObject(store)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

// MARK: - Custom Tab Bar

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    @Binding var showAddTransaction: Bool

    let tabs: [(icon: String, label: String)] = [
        ("house.fill", "Dashboard"),
        ("list.bullet.rectangle", "Transactions"),
        ("chart.pie.fill", "Budget"),
        ("target", "Goals"),
        ("creditcard.fill", "Accounts"),
    ]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<5) { idx in
                if idx == 2 {
                    // Center Add button
                    Button {
                        showAddTransaction = true
                    } label: {
                        ZStack {
                            Circle()
                                .fill(
                                    LinearGradient(colors: [Color(hex: "#6366F1")!, Color(hex: "#8B5CF6")!],
                                                   startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                                .frame(width: 56, height: 56)
                                .shadow(color: Color(hex: "#6366F1")!.opacity(0.5), radius: 12, y: 4)
                            Image(systemName: "plus")
                                .font(.system(size: 22, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .offset(y: -10)
                } else {
                    Button {
                        withAnimation(.spring(response: 0.3)) {
                            selectedTab = idx > 2 ? idx - 1 : idx
                        }
                    } label: {
                        VStack(spacing: 4) {
                            Image(systemName: tabs[idx > 2 ? idx - 1 : idx].icon)
                                .font(.system(size: 20))
                                .foregroundColor(isSelected(idx) ? Color(hex: "#6366F1")! : Color.gray.opacity(0.5))
                            Text(tabs[idx > 2 ? idx - 1 : idx].label)
                                .font(.system(size: 9, weight: .medium))
                                .foregroundColor(isSelected(idx) ? Color(hex: "#6366F1")! : Color.gray.opacity(0.5))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 8)
                    }
                }
            }
        }
        .padding(.top, 12)
        .background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .ignoresSafeArea()
                .shadow(color: .black.opacity(0.08), radius: 20, y: -5)
        )
    }

    func isSelected(_ idx: Int) -> Bool {
        let mappedIdx = idx > 2 ? idx - 1 : idx
        return selectedTab == mappedIdx
    }
}

#Preview {
    ContentView()
}
