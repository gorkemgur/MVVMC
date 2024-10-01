//
//  SettingsCoorDinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol SettingsCoordinatorNavigationProtocol: AnyObject {}

final class SettingsCoordinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    private let pageTitle: String
    
    init(navigationController: UINavigationController, pageTitle: String) {
        self.navigationController = navigationController
        self.pageTitle = pageTitle
    }
    
    func start() {
        let settingsViewController = SettingsBuilder.generateSettingsView(delegate: self, pageTitle: pageTitle)
        navigationController.pushViewController(settingsViewController, animated: true)
    }
}

extension SettingsCoordinator: SettingsCoordinatorNavigationProtocol {
    
}
