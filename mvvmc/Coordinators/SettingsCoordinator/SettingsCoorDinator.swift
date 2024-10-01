//
//  SettingsCoorDinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class SettingsCoorDinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    private let pageTitle: String
    
    init(navigationController: UINavigationController, pageTitle: String) {
        self.navigationController = navigationController
        self.pageTitle = pageTitle
    }
    
    func start() {
        let settingsViewController = SettingsViewController(pageTitle: pageTitle)
        navigationController.pushViewController(settingsViewController, animated: true)
    }
}
