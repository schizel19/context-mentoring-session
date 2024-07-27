//
//  User.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

struct User: Equatable, Hashable {
    let id: ModelID<Self>
    let name: String
    let email: String
}
