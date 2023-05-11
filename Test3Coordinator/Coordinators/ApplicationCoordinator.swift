//
//  ApplicationCoordinator.swift
//  Test3Coordinator
//
//  Created by Vladimir Djurdjevic on 3/6/23.
//

import Foundation
import UIKit

class ApplicationCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    let window: UIWindow
    let rootViewController: UINavigationController
    let welcomeCoordinator: WelcomeCoordinator
    
    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()
        welcomeCoordinator = WelcomeCoordinator(navigationController: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        welcomeCoordinator.start()
        window.makeKeyAndVisible()
    }

}
