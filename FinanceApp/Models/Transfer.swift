//
//  Transfer.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation

struct Transfer: Identifiable {
    let id: UUID
    let accountFromId: UUID
    let accountToId: UUID
    let amount: Decimal
    let description: String?
    let date: Date
}
