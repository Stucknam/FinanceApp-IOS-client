//
//  RoundDecimal.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//
import Foundation

extension Decimal {
    func rounded(scale: Int) -> Decimal {
        var value = self
        var result = Decimal()
        NSDecimalRound(&result, &value, scale, .plain)
        return result
    }
}

extension Decimal {
    func formatted() -> String {
        let number = NSDecimalNumber(decimal: self)
        return String(format: "%.2f", number.doubleValue)
    }
}

