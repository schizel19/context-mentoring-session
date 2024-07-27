//
//  AppStateReducer.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

protocol AppStateReducer {
    func reduce(state: AppState) -> AppState
}
