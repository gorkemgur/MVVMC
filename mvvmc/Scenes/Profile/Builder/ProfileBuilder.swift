//
//  ProfileBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class ProfileBuilder {
    static func generateProfileView(delegate: ProfileCoordinatorNavigationDelegate) -> ProfileViewController {
        let profileViewModel = ProfileViewModel(navigationDelegate: delegate)
        let profileViewController = ProfileViewController(viewModel: profileViewModel)
        return profileViewController
    }
}
