//
//  DashboardPeriod.swift
//  FinanceApp
//
//  Created by user271129 on 5/28/26.
//


enum DashboardPeriod: String, CaseIterable, Identifiable {    case day    case week    case month    var id: String { rawValue }}