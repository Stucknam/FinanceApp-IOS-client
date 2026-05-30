//
//  TransactionMapper.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation

extension TransactionDto {
    func toModel() -> Transaction {
        Transaction(
            id: id,
            accountId: accountId,
            categoryId: categoryId,
            amount: amount,
            date: date,
            description: description,
            type: type,
            transferId: transferId
        )
    }
}

extension CreateTransactionDto {
    init(from model: Transaction) {
        self.init(
            type: model.type,
            accountId: model.accountId,
            categoryId: model.categoryId,
            amount: model.amount,
            description: model.description,
            date: model.date
        )
    }
}
