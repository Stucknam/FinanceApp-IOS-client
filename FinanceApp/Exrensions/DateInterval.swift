//
//  DateInterval.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//

import Foundation

extension DashboardPeriod {
    var dateInterval: DateInterval {
        let calendar = Calendar.current
        let now = Date()

        switch self {
        case .day:
            let start = calendar.startOfDay(for: now)
            let end = calendar.date(byAdding: .day, value: 1, to: start)!
            return DateInterval(start: start, end: end)

        case .week:
            let start = calendar.date(from: calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: now))!
            let end = calendar.date(byAdding: .day, value: 7, to: start)!
            return DateInterval(start: start, end: end)

        case .month:
            let start = calendar.date(from: calendar.dateComponents([.year, .month], from: now))!
            let end = calendar.date(byAdding: .month, value: 1, to: start)!
            return DateInterval(start: start, end: end)
        }
    }
}
