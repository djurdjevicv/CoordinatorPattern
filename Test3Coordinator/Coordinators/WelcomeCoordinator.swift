//
//  WelcomeCoordinator.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

class WelcomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let presenter = WelcomePresenter(coordinator: self)
        let viewController = WelcomeViewController(presenter: presenter)
        presenter.view = viewController
        
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    func showLogInScreen(){
        let loginScreen = LogInCoordinator(navigationController: navigationController)
        loginScreen.start()
    }
    
    func showSignUpScreen(){
        let signUpScreen = SignUpCoordinator(navigationController: navigationController)
        signUpScreen.start()
    }
    
}

