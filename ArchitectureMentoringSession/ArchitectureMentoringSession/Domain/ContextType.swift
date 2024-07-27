//
//  ContextType.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import RxSwift

protocol ContextType: AnyObject {
    associatedtype State: StateType
    associatedtype Action: ActionTagType
    
    var state: State { get }
    
    init(state: State)
    
    /// Returns an observable for current state and action associated with it
    func stateObservable() -> Observable<(State, Action?)>
    
    /// Change the current state with a passed state and propagate the updated state. If an action exists, it's spreaded along.
    func propagate(state: State, action: Action)
}

