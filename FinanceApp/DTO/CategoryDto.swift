//
//  CategoryDto.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//


import Foundationstruct CategoryDto: Codable, Identifiable {    let id: UUID    let name: String?    let iconId: String?    let colorId: String?    let type: CategoryType}