//
//  ProfileCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

// To handle profile navigation
protocol ProfileCoorDinatorNavigationDelegate {
    func handleNavigation(_ navigationType: ProfileNavigationType)
}

final class ProfileCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let profileViewModel = ProfileViewModel()
        let profileViewController = ProfileViewController(viewModel: profileViewModel, navigationDelegate: self)
        navigationController.setViewControllers([profileViewController], animated: true)
    }
}

extension ProfileCoordinator: ProfileCoorDinatorNavigationDelegate {
    func handleNavigation(_ navigationType: ProfileNavigationType) {
        switch navigationType {
        case .settings(let pageTitle):
            let settingsCoorDinator = SettingsCoorDinator(navigationController: navigationController, pageTitle: pageTitle)
            settingsCoorDinator.start()
        }
    }
}


enum ProfileNavigationType {
    case settings(String)
}
