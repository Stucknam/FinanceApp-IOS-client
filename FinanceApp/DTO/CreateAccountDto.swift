//
//  CreateAccountDto.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//


import Foundationstruct CreateAccountDto: Codable {    let name: String?    let amount: Decimal    let iconId: String?    let color: String?    let description: String?    let isDeleted: Bool}