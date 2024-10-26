//
//  TabbarCoordinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class TabbarCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    private var tabbarController: UITabBarController?
    
    private lazy var homeCoordinator: HomeCoordinator = {
        let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
        return homeCoordinator
    }()
    
    private lazy var profileCoordinator: ProfileCoordinator = {
        let profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())
        return profileCoordinator
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        tabbarController = UITabBarController()
        
        homeCoordinator.start()
        profileCoordinator.start()
        
        tabbarController?.setViewControllers([
            homeCoordinator.navigationController,
            profileCoordinator.navigationController
        ], animated: true)
        
        homeCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Home",
                                                                     image: UIImage(systemName: "house.fill"),
                                                                     tag: 0)
        profileCoordinator.navigationController.tabBarItem = UITabBarItem(title: "Profile",
                                                                        image: UIImage(systemName: "person.crop.circle.fill"),
                                                                        tag: 1)
        
        guard let tabbarController = tabbarController else { return }
        buildTabbarAppearance()
        navigationController.setViewControllers([tabbarController], animated: true)
    }
    
    deinit {
        print("🔴 TabbarCoordinator deinit")
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
