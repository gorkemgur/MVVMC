//
//  SettingsBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class SettingsBuilder {
    static func generateSettingsView(delegate: SettingsCoordinatorNavigationProtocol, pageTitle: String) -> SettingsViewController {
        let settingsViewModel = SettingsViewModel(navigationDelegate: delegate, pageTitle: "Settings")
        let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
        return settingsViewController
    }
}
