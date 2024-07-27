//
//  Post.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

struct Post: Equatable, Hashable {
    let id: ModelID<Self>
    let user: User
    let imageUrl: String
    let body: String
    let relatedPosts: [String]
}
