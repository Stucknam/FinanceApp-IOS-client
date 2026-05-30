//
//  CreateTransactionDto.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//


import Foundationstruct CreateTransactionDto: Codable {    let type: CategoryType    let accountId: UUID    let categoryId: UUID?    let amount: Decimal    let description: String?    let date: Date?}