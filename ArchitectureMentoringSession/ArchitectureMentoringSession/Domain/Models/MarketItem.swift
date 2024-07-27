//
//  MarketItem.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

struct MarketItem: Equatable, Hashable {
    let id: ItemID
    let imageUrl: String
    let price: Float
    let seller: User
    let articleIds: [String]
}
