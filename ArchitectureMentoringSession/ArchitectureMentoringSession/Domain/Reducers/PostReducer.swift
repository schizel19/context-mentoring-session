//
//  PostReducer.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

enum PostReducer {
    case load(_ posts: [Post])
    case add(_ post: Post)
    case remove(postId: ModelID<Post>)
}

extension PostReducer: AppStateReducer {
    func reduce(state: AppState) -> AppState {
        var newState = state
        switch self {
        case .load(let posts):
            newState.postIds = posts.map { $0.id }
            newState.register(posts)
        case .add(let post):
            newState.postIds.append(post.id)
            newState.register([post])
        case .remove(let postId):
            newState.postIds.removeAll(where: { $0 == postId })
            newState.postById.removeValue(forKey: postId)
        }
        return newState
    }
}

