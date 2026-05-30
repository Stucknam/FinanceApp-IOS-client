//
//  CategoryMapper.swift
//  FinanceApp
//
//  Created by user271129 on 5/27/26.
//

import Foundation

extension CategoryDto {
    func toModel() -> Category {
        Category(
            id: id,
            name: name ?? "",
            iconId: iconId ?? "questionmark",
            color: colorId ?? "#000000",
            type: type
        )
    }
}

extension CreateCategoryDto {
    init(from model: Category) {
        self.init(
            name: model.name,
            iconId: model.iconId,
            colorId: model.color,
            type: model.type
        )
    }
}
