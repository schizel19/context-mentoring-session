//
//  AppState+User.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

extension AppState {
    mutating func register(_ users: [User]) {
        users.forEach {
            userById[$0.id] = $0
        }
    }
}
