//
//  TabbarCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class TabbarCoordinator: CoordinatorProtocol {
    //Define this variable as let we don't want to change from another class
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbarController = UITabBarController()
        
        let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
        let profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())
        
        homeCoordinator.start()
        profileCoordinator.start()
        
        tabbarController.setViewControllers([
            homeCoordinator.navigationController,
            profileCoordinator.navigationController
        ], animated: true)
        
        homeCoordinator.navigationController.tabBarItem = UITabBarItem(title: "HOME", image: .strokedCheckmark, tag: 0)
        profileCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Profile", image: .strokedCheckmark, tag: 0)
        
        navigationController.setViewControllers([tabbarController], animated: true)
        
    }
    
    
}
