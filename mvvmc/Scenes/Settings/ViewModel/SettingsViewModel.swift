//
//  SettingsViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class SettingsViewModel {
    
    weak var view: SettingsViewDelegate?
    
    private let navigationDelegate: SettingsCoordinatorNavigationProtocol
    private let pageTitle: String
    
    init(navigationDelegate: SettingsCoordinatorNavigationProtocol, pageTitle: String) {
        self.navigationDelegate = navigationDelegate
        self.pageTitle = pageTitle
    }
    
    func viewDidLoad() {
        view?.handleOutput(.updateTitle(pageTitle))
    }
    
}
