//
//  GlobalState.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

typealias UserID = ModelID<User>
typealias PostID = ModelID<Post>
typealias CategoryID = ModelID<Category>

struct AppState: StateType {
    
    // MARK: - Models
    var userIds = [UserID]()
    var userById = [UserID: User]()
    
    var postIds = [PostID]()
    var postById = [PostID: Post]()
    
    var categoryIds = [CategoryID]()
    var categoryById = [CategoryID: Category]()
    
    var itemById = [ItemID: MarketItem]()
    
    // MARK: - Relationships
    var postIdsByUserId = [UserID: [PostID]]()
    var itemIdsByUserId = [UserID: [ItemID]]()
    var postIdsByCategoryId = [CategoryID: [PostID]]()
}
