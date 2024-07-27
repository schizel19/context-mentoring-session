//
//  CategoryReducer.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

enum CategoryReducer {
    case load(_ categories: [Category])
    case posts(_ post: [Post], category: Category)
}

extension CategoryReducer: AppStateReducer {
    func reduce(state: AppState) -> AppState {
        var newState = state
        switch self {
        case .load(let categories):
            newState.categoryIds = categories.map { $0.id }
            newState.register(categories)
        case let .posts(posts, category):            
            newState.register([category])
            newState.postIdsByCategoryId[category.id] = posts.map { $0.id }
            newState.register(posts)
        }
        return newState
    }
}
