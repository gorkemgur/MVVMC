//
//  SettingsBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class SettingsBuilder {
    static func generateSettingsView(pageTitle: String) -> SettingsViewController {
        let settingsViewController = SettingsViewController(pageTitle: pageTitle)
        return settingsViewController
    }
}
