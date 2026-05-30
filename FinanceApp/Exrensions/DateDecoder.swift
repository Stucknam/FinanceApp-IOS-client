//
//  DateDecoder.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//

import Foundation

extension JSONDecoder.DateDecodingStrategy {
    static let flexibleISO8601 = custom { decoder -> Date in
        let container = try decoder.singleValueContainer()
        let string = try container.decode(String.self)

        // 1. Стандартный ISO8601
        if let date = ISO8601DateFormatter().date(from: string) {
            return date
        }

        // 2. ISO8601 с миллисекундами / микросекундами
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [
            .withInternetDateTime,
            .withFractionalSeconds
        ]
        if let date = formatter.date(from: string) {
            return date
        }

        // 3. Попытка убрать микросекунды вручную
        if let dotRange = string.range(of: ".") {
            let trimmed = String(string[..<dotRange.lowerBound]) + "Z"
            if let date = ISO8601DateFormatter().date(from: trimmed) {
                return date
            }
        }

        throw DecodingError.dataCorruptedError(
            in: container,
            debugDescription: "Invalid ISO8601 date: \(string)"
        )
    }
}
