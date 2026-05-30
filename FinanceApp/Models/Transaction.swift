//
//  Transaction.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation


struct Transaction: Identifiable {
    let id: UUID
    let accountId: UUID
    let categoryId: UUID?
    let amount: Decimal
    let date: Date
    let description: String?
    let type: CategoryType
    let transferId: UUID?
}
