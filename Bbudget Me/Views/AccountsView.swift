// AccountsView.swift
// Bbudget Me

import SwiftUI

struct AccountsView: View {
    @EnvironmentObject var store: BudgetStore
    @State private var showAddAccount = false

    var checkingAndSavings: [Account] { store.accounts.filter { $0.type == .checking || $0.type == .savings } }
    var creditCards: [Account] { store.accounts.filter { $0.type == .creditCard } }
    var others: [Account] { store.accounts.filter { $0.type != .checking && $0.type != .savings && $0.type != .creditCard } }

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    // Net worth hero
                    NetWorthCard()
                        .padding(.horizontal, 16)

                    // Checking & Savings
                    if !checkingAndSavings.isEmpty {
                        AccountSection(title: "Checking & Savings", accounts: checkingAndSavings)
                    }

                    // Credit Cards
                    if !creditCards.isEmpty {
                        AccountSection(title: "Credit Cards", accounts: creditCards)
                    }

                    // Others
                    if !others.isEmpty {
                        AccountSection(title: "Other Accounts", accounts: others)
                    }

                    // Add account button
                    Button {
                        showAddAccount = true
                    } label: {
                        HStack {
                            Image(systemName: "plus.circle.fill")
                            Text("Add Account")
                        }
                        .font(.system(size: 15, weight: .semibold))
                        .foregroundColor(Color(hex: "#6366F1")!)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .background(Color(hex: "#6366F1")!.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                    }
                    .padding(.horizontal, 16)

                    Spacer(minLength: 100)
                }
                .padding(.top, 16)
            }
            .background(Color(.systemGroupedBackground))
            .navigationTitle("Accounts")
            .navigationBarTitleDisplayMode(.inline)
            .opaqueNavigationBarIfAvailable()
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddAccount = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color(hex: "#6366F1")!)
                    }
                }
            }
            .sheet(isPresented: $showAddAccount) {
                AddAccountView()
                    .environmentObject(store)
            }
        }
        .navigationViewStyle(.stack)
    }
}

// MARK: - Net Worth Card

struct NetWorthCard: View {
    @EnvironmentObject var store: BudgetStore

    var assets: Double {
        store.accounts.filter { $0.type != .creditCard }.reduce(0) { $0 + $1.balance }
    }

    var liabilities: Double {
        store.accounts.filter { $0.type == .creditCard }.reduce(0) { $0 + $1.balance }
    }

    var body: some View {
        VStack(spacing: 0) {
            // Gradient top
            ZStack {
                LinearGradient(
                    colors: [Color(hex: "#1E40AF")!, Color(hex: "#3B82F6")!],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: 120)

                VStack(spacing: 4) {
                    Text("Net Worth")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.white.opacity(0.7))
                        .textCase(.uppercase)
                    Text(store.totalNetWorth.formatted(.currency(code: "USD")))
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }
            }

            // Assets vs Liabilities
            HStack(spacing: 0) {
                VStack(spacing: 4) {
                    Text("Assets")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    Text(assets.formatted(.currency(code: "USD")))
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(hex: "#10B981")!)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)

                Divider()
                    .frame(height: 40)

                VStack(spacing: 4) {
                    Text("Liabilities")
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    Text(liabilities.formatted(.currency(code: "USD")))
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color(hex: "#EF4444")!)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
            }
            .background(Color(.systemBackground))
        }
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(color: Color(hex: "#1E40AF")!.opacity(0.2), radius: 15, y: 6)
    }
}

// MARK: - Account Section

struct AccountSection: View {
    @EnvironmentObject var store: BudgetStore
    let title: String
    let accounts: [Account]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .padding(.horizontal, 16)

            ForEach(accounts) { account in
                AccountCard(account: account)
                    .padding(.horizontal, 16)
            }
        }
    }
}

// MARK: - Account Card

struct AccountCard: View {
    @EnvironmentObject var store: BudgetStore
    let account: Account

    var recentTransactions: [Transaction] {
        Array(store.transactions.filter { $0.accountID == account.id }.sorted { $0.date > $1.date }.prefix(3))
    }

    var body: some View {
        VStack(spacing: 14) {
            HStack(spacing: 14) {
                ZStack {
                    RoundedRectangle(cornerRadius: 14)
                        .fill(
                            LinearGradient(
                                colors: [account.color.opacity(0.8), account.color],
                                startPoint: .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 52, height: 52)
                    Image(systemName: accountIcon(for: account.type))
                        .font(.system(size: 22))
                        .foregroundColor(.white)
                }

                VStack(alignment: .leading, spacing: 3) {
                    Text(account.name)
                        .font(.system(size: 15, weight: .semibold))
                    Text(account.type.rawValue)
                        .font(.system(size: 12))
                        .foregroundColor(.secondary)
                    if !account.institution.isEmpty {
                        Text(account.institution)
                            .font(.system(size: 11))
                            .foregroundColor(.secondary.opacity(0.7))
                    }
                }

                Spacer()

                VStack(alignment: .trailing, spacing: 3) {
                    Text(account.balance.formatted(.currency(code: "USD")))
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(account.type == .creditCard ? Color(hex: "#EF4444")! : .primary)
                    Text(account.type == .creditCard ? "owed" : "available")
                        .font(.system(size: 11))
                        .foregroundColor(.secondary)
                }
            }

            if !recentTransactions.isEmpty {
                Divider()
                VStack(spacing: 6) {
                    ForEach(recentTransactions) { tx in
                        HStack {
                            Text(tx.payee)
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                            Spacer()
                            Text(tx.displayAmount)
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(tx.type == .income ? Color(hex: "#10B981")! : .secondary)
                        }
                    }
                }
            }
        }
        .padding(14)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: .black.opacity(0.04), radius: 8, y: 2)
    }

    func accountIcon(for type: AccountType) -> String {
        switch type {
        case .checking: return "building.columns.fill"
        case .savings: return "piggybank.fill"
        case .creditCard: return "creditcard.fill"
        case .cash: return "banknote.fill"
        case .investment: return "chart.line.uptrend.xyaxis"
        }
    }
}

// MARK: - Add Account View

struct AddAccountView: View {
    @EnvironmentObject var store: BudgetStore
    @Environment(\.dismiss) var dismiss

    @State private var name = ""
    @State private var type: AccountType = .checking
    @State private var balance = ""
    @State private var institution = ""
    @State private var selectedColor = "#1E40AF"

    let colors = ["#1E40AF", "#065F46", "#7C3AED", "#991B1B", "#92400E",
                  "#065F46", "#1E3A5F", "#4C1D95", "#831843", "#1A202C"]

    var body: some View {
        NavigationView {
            Form {
                Section("Account Info") {
                    TextField("Account Name", text: $name)
                    Picker("Type", selection: $type) {
                        ForEach(AccountType.allCases, id: \.self) { t in
                            Text(t.rawValue).tag(t)
                        }
                    }
                    TextField("Institution (optional)", text: $institution)
                    HStack {
                        Text("Current Balance")
                        Spacer()
                        TextField("$0.00", text: $balance)
                            .keyboardType(.decimalPad)
                            .multilineTextAlignment(.trailing)
                    }
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
            .navigationTitle("New Account")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        let bal = Double(balance) ?? 0
                        let acc = Account(name: name, type: type, balance: bal, institution: institution, colorHex: selectedColor)
                        store.addAccount(acc)
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
