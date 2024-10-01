//
//  SplashBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class SplashBuilder {
    static func generateSplashView(splashNavigationDelegate: SplashCoordinatorNavigationDelegate) -> SplashViewController {
        let splashViewModel = SplashViewModel(navigationDelegate: splashNavigationDelegate)
        let splashViewController = SplashViewController(viewModel: splashViewModel)
        return splashViewController
    }
}
