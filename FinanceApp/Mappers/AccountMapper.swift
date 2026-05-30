//
//  AccountMapper.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation

extension AccountDto {
    func toModel() -> Account {
        Account(
            id: id,
            name: name ?? "",
            amount: amount,
            iconId: iconId ?? "questionmark",
            color: color ?? "#000000",
            description: description,
            isDeleted: isDeleted
        )
    }
}

extension CreateAccountDto {
    init(from model: Account) {
        self.init(
            name: model.name,
            amount: model.amount,
            iconId: model.iconId,
            color: model.color,
            description: model.description,
            isDeleted: model.isDeleted
        )
    }
}
