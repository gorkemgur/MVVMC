//
//  HomeViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class HomeViewModel {
    weak var view: HomeViewDelegate?
    
    private let navigationDelegate: HomeCoordinatorNavigationDelegate
    
    init(navigationDelegate: HomeCoordinatorNavigationDelegate) {
        self.navigationDelegate = navigationDelegate
    }
    
    func viewDidLoad() {
        view?.handleOutput(.showSuccessMessage("Page Load Success"))
    }
    
    deinit {
        print("⚠️ Deinit HomeViewModel")
    }
}
