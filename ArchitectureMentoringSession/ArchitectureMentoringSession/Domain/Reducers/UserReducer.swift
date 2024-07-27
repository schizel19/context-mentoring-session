//
//  UserReducer.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

enum UserReducer {
    case load(_ users: [User])
    case remove(_ user: UserID)
    case add(_ user: User)
}

extension UserReducer: AppStateReducer {
    func reduce(state: AppState) -> AppState {
        var newState = state
        switch self {
        case .load(let users):
            newState.userIds = users.map { $0.id }
            newState.register(users)
        case .remove(let userId):
            newState.userIds.removeAll(where: { $0 == userId })
            newState.userById.removeValue(forKey: userId)
        case .add(let user):
            newState.userIds.append(user.id)
            newState.register([user])
        }
        
        return newState
    }
}
