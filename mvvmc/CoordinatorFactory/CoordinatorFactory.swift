//
//  CoordinatorFactory.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol CoordinatorFactory {
    func removeCoordinator(_ coordinator: CoordinatorProtocol)
    func createSplashCoordinator(navigationController: UINavigationController) -> SplashCoorDinator
    func createTabbarCoordinator(navigationController: UINavigationController) -> TabbarCoordinator
}

final class CoordinatorFactoryImpl: CoordinatorFactory {
    
    private var coordinators: [CoordinatorProtocol] = []
    
    func createSplashCoordinator(navigationController: UINavigationController) -> SplashCoorDinator {
        let splashCoordinator = SplashCoorDinator(navigationController: navigationController)
        coordinators.append(splashCoordinator)
        return splashCoordinator
    }
    
    func createTabbarCoordinator(navigationController: UINavigationController) -> TabbarCoordinator {
        let tabbarCoordinator = TabbarCoordinator(navigationController: navigationController)
        coordinators.append(tabbarCoordinator)
        return tabbarCoordinator
    }
    
    func removeCoordinator(_ coordinator: any CoordinatorProtocol) {
        coordinators.removeAll{ $0 === coordinator }
    }
}
