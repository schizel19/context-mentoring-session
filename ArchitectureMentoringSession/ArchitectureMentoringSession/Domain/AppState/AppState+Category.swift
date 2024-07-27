//
//  AppState+Category.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

extension AppState {
    mutating func register(_ categories: [Category]) {
        categories.forEach {
            categoryById[$0.id] = $0
        }
    }
}
