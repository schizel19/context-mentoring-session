//
//  ItemReducer.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

enum ItemReducer {
    case load(_ items: [MarketItem])
    case add(_ item: MarketItem)
    case remove(_ itemId: ItemID)
}

extension ItemReducer: AppStateReducer {
    func reduce(state: AppState) -> AppState {
        var newState = state
        switch self {
        case .load(let items):
            newState.register(items)
        case .add(let item):
            newState.register([item])
        case .remove(let itemId):
            newState.itemById.removeValue(forKey: itemId)
        }
        return newState
    }
}
