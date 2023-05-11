//
//  LogInCoordinator.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

class LogInCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let presenter = LogInPresenter(coordinator: self)
        let viewController = LogInViewController(presenter: presenter)
        presenter.view = viewController
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showSignUpScreen(){
        let signUpScreen = SignUpCoordinator(navigationController: navigationController)
        signUpScreen.start()
    }
    
    func showLastScreen(){
        let lastScreen = LastCoordinator(navigationController: navigationController)
        lastScreen.start()
    }
    
}
