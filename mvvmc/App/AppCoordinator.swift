//
//  AppCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let splashCoordinator = SplashCoordinator(splashNavigationDelegate: self, navigationController: navigationController)
        splashCoordinator.start()
    }
}

extension AppCoordinator: SplashCoordinatorNavigationDelegate {
    func navigate(to navigationType: SplashNavigationType) {
        switch navigationType {
        case .home:
            showMainCoordinator()
        case .login:
            break
        }
    }
    
    private func showMainCoordinator() {
        let tabbarCoorDinator = TabbarCoordinator(navigationController: navigationController)
        tabbarCoorDinator.start()
    }
}
