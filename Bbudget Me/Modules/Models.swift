// Models.swift
// Bbudget Me

import Foundation
import SwiftUI

// MARK: - Transaction

enum TransactionType: String, Codable, CaseIterable {
    case expense = "Expense"
    case income = "Income"
    case transfer = "Transfer"
}

enum RecurringFrequency: String, Codable, CaseIterable {
    case daily = "Daily"
    case weekly = "Weekly"
    case biweekly = "Biweekly"
    case monthly = "Monthly"
    case yearly = "Yearly"
}

struct Transaction: Identifiable, Codable {
    var id: UUID = UUID()
    var date: Date
    var amount: Double
    var payee: String
    var categoryID: UUID?
    var type: TransactionType
    var notes: String = ""
    var tags: [String] = []
    var isRecurring: Bool = false
    var recurringFrequency: RecurringFrequency?
    var accountID: UUID

    var displayAmount: String {
        let formatted = String(format: "%.2f", abs(amount))
        return type == .expense ? "-$\(formatted)" : "+$\(formatted)"
    }
}

// MARK: - Category

struct BudgetCategory: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var icon: String  // SF Symbol name
    var colorHex: String
    var budgetAmount: Double
    var type: TransactionType

    var color: Color {
        Color(hex: colorHex) ?? .blue
    }
}

// MARK: - Account

enum AccountType: String, Codable, CaseIterable {
    case checking = "Checking"
    case savings = "Savings"
    case creditCard = "Credit Card"
    case cash = "Cash"
    case investment = "Investment"
}

struct Account: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var type: AccountType
    var balance: Double
    var institution: String = ""
    var colorHex: String = "#4F46E5"

    var color: Color {
        Color(hex: colorHex) ?? .indigo
    }
}

// MARK: - Savings Goal

struct SavingsGoal: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var targetAmount: Double
    var currentAmount: Double
    var targetDate: Date?
    var icon: String
    var colorHex: String

    var progress: Double {
        guard targetAmount > 0 else { return 0 }
        return min(currentAmount / targetAmount, 1.0)
    }

    var color: Color {
        Color(hex: colorHex) ?? .green
    }
}

// MARK: - Budget Period

enum BudgetPeriod: String, Codable, CaseIterable {
    case weekly = "Weekly"
    case monthly = "Monthly"
    case yearly = "Yearly"
}

// MARK: - Color Extension

extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        let r = Double((rgb & 0xFF0000) >> 16) / 255.0
        let g = Double((rgb & 0x00FF00) >> 8) / 255.0
        let b = Double(rgb & 0x0000FF) / 255.0

        self.init(red: r, green: g, blue: b)
    }

    func toHex() -> String {
        let uiColor = UIColor(self)
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
        uiColor.getRed(&r, green: &g, blue: &b, alpha: &a)
        return String(format: "#%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
    }
}
