//
//  GlobalContext.swift
//  ArchitectureMentoringSession
//
//  Created by Patrick Domingo on 7/27/24.
//

import RxSwift
import RxRelay

class GlobalContext: ContextType {
    typealias State = AppState
    typealias Action = GlobalAction
    
    var state: State {
        _eventSubject.value.0
    }
    
    private let _eventSubject: BehaviorRelay<(State, Action?)>
    private var _prevState: State?
    
    required init(state: State) {
        _eventSubject = .init(value: (state, nil))
    }
    
    func stateObservable() -> Observable<(State, GlobalAction?)> {
        return _eventSubject.asObservable()
    }
    
    func propagate(state: State, action: GlobalAction?) {
        _eventSubject.accept((state, action))
    }
}
