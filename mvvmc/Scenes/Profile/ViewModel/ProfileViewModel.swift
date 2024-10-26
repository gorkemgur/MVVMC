//
//  ProfileViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class ProfileViewModel {
    weak var view: ProfileViewDelegate?
    
    private let navigationDelegate: ProfileCoordinatorNavigationDelegate
    
    init(navigationDelegate: ProfileCoordinatorNavigationDelegate) {
        self.navigationDelegate = navigationDelegate
    }
    
    func viewDidLoad() {
        view?.handleOutput(.showSuccessMessage("Page Loaded"))
    }
    
    func navigate(to navigationType: ProfileNavigationType) {
        navigationDelegate.handleNavigation(navigationType)
    }
    
    deinit {
        print("💀 ProfileViewModel deinit, navigationDelegate: \(String(describing: navigationDelegate))")
    }
    
}
