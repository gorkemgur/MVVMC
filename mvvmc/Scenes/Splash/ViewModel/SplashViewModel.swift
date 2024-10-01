//
//  SplashViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation


final class SplashViewModel {
    private let navigationDelegate: SplashCoordinatorNavigationDelegate
    
    init(navigationDelegate: SplashCoordinatorNavigationDelegate) {
        self.navigationDelegate = navigationDelegate
    }
    
    func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [weak self] in
            guard let self = self else { return }
            self.navigationDelegate.navigate(to: .home)
        }
    }
}
