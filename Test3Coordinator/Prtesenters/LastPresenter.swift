//
//  LastPresenter.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation

class LastPresenter {
    
    weak var view: ButtonView?
    private let coordinator: LastCoordinator
    
    init(coordinator: LastCoordinator) {
        self.coordinator = coordinator
    }
    
    @objc func didPressHome(){
        coordinator.showWelcomeScreen()
    }
    
    func load() {
        view?.setButtonText("Back Home")
    }
    
}
