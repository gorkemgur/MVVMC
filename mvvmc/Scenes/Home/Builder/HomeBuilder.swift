//
//  HomeBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class HomeBuilder {
    static func generateHomeView(navigationDelegate: HomeCoordinatorNavigationDelegate) -> HomeViewController {
        let homeViewModel = HomeViewModel(navigationDelegate: navigationDelegate)
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        return homeViewController
    }
}
