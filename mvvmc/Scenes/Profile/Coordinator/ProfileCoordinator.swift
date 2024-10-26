//
//  ProfileCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

// To handle profile navigation
protocol ProfileCoordinatorNavigationDelegate: AnyObject {
    func handleNavigation(_ navigationType: ProfileNavigationType)
}

final class ProfileCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let profileViewController = ProfileBuilder.generateProfileView(delegate: self)
        navigationController.setViewControllers([profileViewController], animated: true)
    }
    
    deinit {
        print("🔴 ProfileCoordinator deinit")
    }
}

extension ProfileCoordinator: ProfileCoordinatorNavigationDelegate {
    func handleNavigation(_ navigationType: ProfileNavigationType) {
        switch navigationType {
        case .settings(let pageTitle):
            let settingsCoorDinator = SettingsCoordinator(navigationController: navigationController, pageTitle: pageTitle)
            settingsCoorDinator.start()
        }
    }
}


enum ProfileNavigationType {
    case settings(String)
}
