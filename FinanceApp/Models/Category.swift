//
//  Category.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation


struct Category: Identifiable, Hashable {
    let id: UUID
    let name: String
    let iconId: String
    let color: String
    let type: CategoryType
}
