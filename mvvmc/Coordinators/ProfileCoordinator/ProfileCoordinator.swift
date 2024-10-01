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
        navigationController.pushViewController(navigationType.willNavigateViewController, animated: true)
    }
}


enum ProfileNavigationType {
    case settings(String)
    
    var willNavigateViewController: UIViewController {
        switch self {
        case .settings(let pageTitle):
            let settingsViewContoller = SettingsViewController(pageTitle: pageTitle)
            return settingsViewContoller
        }
    }
}
