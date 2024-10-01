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
    func createHomeCoordinator(navigationController: UINavigationController) -> HomeCoordinator
    func createProfileCoordinator(navigationController: UINavigationController) -> ProfileCoordinator
}

final class CoordinatorFactoryImpl: CoordinatorFactory {
    
    private var coordinators: [CoordinatorProtocol] = []
    
    func createSplashCoordinator(navigationController: UINavigationController) -> SplashCoorDinator {
        let splashCoordinator = SplashCoorDinator(navigationController: navigationController)
        coordinators.append(splashCoordinator)
        return splashCoordinator
    }
    
    func createHomeCoordinator(navigationController: UINavigationController) -> HomeCoordinator {
        let homeCoorDinator = HomeCoordinator(navigationController: navigationController)
        coordinators.append(homeCoorDinator)
        return homeCoorDinator
    }
    
    func createProfileCoordinator(navigationController: UINavigationController) -> ProfileCoordinator {
        let profileCoorDinator = ProfileCoordinator(navigationController: navigationController)
        coordinators.append(profileCoorDinator)
        return profileCoorDinator
    }
    
    func removeCoordinator(_ coordinator: any CoordinatorProtocol) {
        coordinators.removeAll{ $0 === coordinator }
    }
    
    deinit{
        print("🥲")
    }
}
