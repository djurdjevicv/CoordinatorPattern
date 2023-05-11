//
//  SignUpPresenter.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation

class SignUpPresenter {
    
    weak var view: FormView?
    weak var buttonView: ButtonView?
    private let coordinator: SignUpCoordinator
    
    init(coordinator: SignUpCoordinator) {
        self.coordinator = coordinator
    }
    
    @objc func didPressLogIn(){
        coordinator.showLogInScreen()
    }
    
    @objc func didPressSignUp(){
        coordinator.showLastScreen()
    }
    
    func load() {
        view?.setButtonText("SIGN UP")
        view?.setPlaceholder("")
        view?.setLabelText("")
    }
    
}
