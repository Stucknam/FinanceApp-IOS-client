//
//  TransactionDto.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//


import Foundationstruct TransactionDto: Codable, Identifiable {    let id: UUID    let type: CategoryType    let accountId: UUID    let categoryId: UUID?    let amount: Decimal    let date: Date    let description: String?    let transferId: UUID?}