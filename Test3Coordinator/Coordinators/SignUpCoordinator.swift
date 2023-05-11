//
//  SignUpCoordinator.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

class SignUpCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let presenter = SignUpPresenter(coordinator: self)
        let viewController = SignUpViewController(presenter: presenter)
        presenter.view = viewController
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showLogInScreen(){
        let logInScreen = LogInCoordinator(navigationController: navigationController)
        logInScreen.start()
    }
    
    func showLastScreen(){
        let lastScreen = LastCoordinator(navigationController: navigationController)
        lastScreen.start()
    }
    
}
