//
//  ID.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import Foundation

protocol ID: Hashable, Equatable {
    var wrappedValue: String { get }
}

struct ModelID<AssociatedObject>: ID, Hashable, Equatable {
    var wrappedValue: String
    
    init(_ idString: String) {
        self.wrappedValue = idString
    }
}

struct ItemID: ID, Hashable, Equatable {
    let itemNumber: Int
    
    var wrappedValue: String {
        String(itemNumber)
    }
    
    init(itemNumber: Int) {
        self.itemNumber = itemNumber
    }
}
