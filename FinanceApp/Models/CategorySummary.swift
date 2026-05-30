//
//  CategorySummary.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//
import Foundation

struct CategorySummary: Identifiable {
    let id = UUID()
    let category: Category
    let total: Decimal
}
