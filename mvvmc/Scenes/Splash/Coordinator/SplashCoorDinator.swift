//
//  SplashCoorDinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol SplashCoordinatorNavigationDelegate: AnyObject {
    func navigate(to navigationType: SplashNavigationType)
}

final class SplashCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    private let splashNavigationDelegate: SplashCoordinatorNavigationDelegate
    
    init(splashNavigationDelegate: SplashCoordinatorNavigationDelegate, navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.splashNavigationDelegate = splashNavigationDelegate
    }
    
    func start() {
        let splashViewController = SplashBuilder.generateSplashView(splashNavigationDelegate: splashNavigationDelegate)
        navigationController.setViewControllers([splashViewController], animated: true)
    }
}


enum SplashNavigationType {
    case home
    case login
}
