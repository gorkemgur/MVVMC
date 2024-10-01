//
//  HomeCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

enum HomeNavigationType {
    case sample(id: Int, pageTitle: String)
}

// To handle output this is way better to write unit tests
protocol HomeCoorDinatorNavigationDelegate: AnyObject {
    func handleNavigation(_ navigationType: HomeNavigationType)
}

final class HomeCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewController = HomeBuilder.generateHomeView(navigationDelegate: self)
        navigationController.setViewControllers([homeViewController], animated: true)
    }
}

extension HomeCoordinator: HomeCoorDinatorNavigationDelegate {
    func handleNavigation(_ navigationType: HomeNavigationType) {
        switch navigationType {
        case .sample(let id, let pageTitle):
            break
            /*
             You can integrate your flow
             */
        }
    }
}
