//
//  Category.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

struct Category: Equatable, Hashable {
    let id: ModelID<Self>
    let title: String
    let postIds: [String]
}
