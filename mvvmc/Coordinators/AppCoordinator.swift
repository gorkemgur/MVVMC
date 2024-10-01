//
//  AppCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    let factory: CoordinatorFactory
    
    init(navigationController: UINavigationController, factory: CoordinatorFactory) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start() {
        let splashCoordinator = factory.createSplashCoordinator(navigationController: navigationController)
        splashCoordinator.delegate = self
        splashCoordinator.start()
    }
}

extension AppCoordinator: SplashCoorDinatorDelegate {
    func splashCoordinatorDidFinish(_ coordinator: SplashCoorDinator) {
        factory.removeCoordinator(coordinator)
        showMainCoordinator()
    }
    
    private func showMainCoordinator() {
        let mainCoordinator = factory.createTabbarCoordinator(navigationController: navigationController)
        mainCoordinator.start()
    }
}
