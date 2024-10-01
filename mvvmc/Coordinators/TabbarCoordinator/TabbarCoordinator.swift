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
    private let factory: CoordinatorFactory
    private var tabbarController: UITabBarController?
    
    init(navigationController: UINavigationController, factory: CoordinatorFactory) {
        self.navigationController = navigationController
        self.factory = factory
    }
    
    func start() {
        tabbarController = UITabBarController()
        
        let homeCoordinator = factory.createHomeCoordinator(navigationController: UINavigationController())
        let profileCoordinator = factory.createProfileCoordinator(navigationController: UINavigationController())
        
        homeCoordinator.start()
        profileCoordinator.start()
        
        tabbarController?.setViewControllers([
            homeCoordinator.navigationController,
            profileCoordinator.navigationController
        ], animated: true)
        
        homeCoordinator.navigationController.tabBarItem = UITabBarItem(title: "HOME", image: UIImage(systemName: "house.fill"), tag: 0)
        profileCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.crop.circle.fill"), tag: 0)
        
        guard let tabbarController = tabbarController else { return }
        
        buildTabbarAppearance()
        
        navigationController.setViewControllers([tabbarController], animated: true)
        
    }
    
}

extension TabbarCoordinator {
    func buildTabbarAppearance() {
        if let tabbarController = tabbarController {
            tabbarController.tabBar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: .blue, size: CGSize(width: (tabbarController.tabBar.frame.width / (CGFloat(tabbarController.tabBar.items?.count ?? 0) * 3)), height:  tabbarController.tabBar.frame.height), lineWidth: 12.0)
        }
        
        UITabBar.appearance().tintColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = .brown.withAlphaComponent(0.41)
    }
}
