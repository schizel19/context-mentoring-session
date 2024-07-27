//
//  AppState+Item.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

extension AppState {
    mutating func register(_ items: [MarketItem]) {
        items.forEach { item in
            let user = item.seller
            itemById[item.id] = item
            register([user])
            itemIdsByUserId[user.id, default: []].append(item.id)
        }
    }
}
