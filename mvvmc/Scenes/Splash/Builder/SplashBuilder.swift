//
//  SplashBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class SplashBuilder {
    static func generateSplashView(splashNavigationDelegate: SplashNavigationDelegate) -> SplashViewController {
        let splashViewModel = SplashViewModel(delegate: splashNavigationDelegate)
        let splashViewController = SplashViewController(viewModel: splashViewModel)
        return splashViewController
    }
}
