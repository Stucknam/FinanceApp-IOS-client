//
//  TransferMapper.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation

extension TransferDto {
    func toModel() -> Transfer {
        Transfer(
            id: id,
            accountFromId: accountFromId,
            accountToId: accountToId,
            amount: amount,
            description: description,
            date: date
        )
    }
}

extension CreateTransferDto {
    init(from model: Transfer) {
        self.init(
            accountFromId: model.accountFromId,
            accountToId: model.accountToId,
            amount: model.amount,
            description: model.description,
            date: model.date
        )
    }
}
