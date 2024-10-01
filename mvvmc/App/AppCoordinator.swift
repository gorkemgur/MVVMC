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
        let splashCoordinator = SplashCoorDinator(navigationController: navigationController)
        splashCoordinator.delegate = self
        splashCoordinator.start()
    }
}

extension AppCoordinator: SplashCoorDinatorDelegate {
    func splashCoordinatorDidFinish(_ coordinator: SplashCoorDinator) {
        showMainCoordinator()
    }
    
    private func showMainCoordinator() {
        let tabbarCoorDinator = TabbarCoordinator(navigationController: navigationController)
        tabbarCoorDinator.start()
    }
}
