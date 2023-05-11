//
//  WelcomePresenter.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation

class WelcomePresenter {
    
    weak var view: ButtonView?
    private let coordinator: WelcomeCoordinator
    
    init(coordinator: WelcomeCoordinator) {
        self.coordinator = coordinator
    }
    
    @objc func didPressLogIn(){
        coordinator.showLogInScreen()
    }
    
    @objc func didPressSignUp(){
        coordinator.showSignUpScreen()
    }
    
    func load() {
        view?.setButtonText("")
    }
}
