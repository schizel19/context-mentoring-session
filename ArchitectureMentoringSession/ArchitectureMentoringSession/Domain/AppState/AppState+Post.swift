//
//  AppState+Post.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

extension AppState {
    mutating func register(_ posts: [Post]) {
        posts.forEach { post in
            let user = post.user
            postById[post.id] = post
            register([user])
            postIdsByUserId[user.id, default: []].append(post.id)
        }
    }
}
