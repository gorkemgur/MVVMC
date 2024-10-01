//
//  HomeBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class HomeBuilder {
    static func generateHomeView(navigationDelegate: HomeCoorDinatorNavigationDelegate) -> HomeViewController {
        let homeViewModel = HomeViewModel()
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        homeViewController.navigationDelegate = navigationDelegate
        return homeViewController
    }
}
