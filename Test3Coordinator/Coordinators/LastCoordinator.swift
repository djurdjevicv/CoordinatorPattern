//
//  LastCoordinator.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

class LastCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let presenter = LastPresenter(coordinator: self)
        let viewController = LastViewController(presenter: presenter)
        presenter.view = viewController 
        
        navigationController.setViewControllers([viewController], animated: true)
    }
    
    func showWelcomeScreen(){
        let welcomeScreen = WelcomeCoordinator(navigationController: navigationController)
        welcomeScreen.start()
    }
    
}
