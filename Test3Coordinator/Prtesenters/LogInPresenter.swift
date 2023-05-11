//
//  LogInPresenter.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation

class LogInPresenter {
    
    weak var view: FormView?
    private let coordinator: LogInCoordinator
    
    init(coordinator: LogInCoordinator) {
        self.coordinator = coordinator
    }
    
    @objc func didPressLogIn(){
        coordinator.showLastScreen()
    }
    
    @objc func didPressSignUp(){
        coordinator.showSignUpScreen()
    }
    
    func load() {
        view?.setButtonText("LOG IN")
        view?.setPlaceholder("")
        view?.setLabelText("")
    }
    
}
