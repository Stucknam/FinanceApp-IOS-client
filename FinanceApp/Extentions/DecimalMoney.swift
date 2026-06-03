//
//  DecimalMoney.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//

import Foundation

extension Decimal {
    var money: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "RUB"
        formatter.maximumFractionDigits = 2
        return formatter.string(from: self as NSDecimalNumber) ?? "\(self)"
    }
}
