//
//  ProfileBuilder.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class ProfileBuilder {
    static func generateProfileView(delegate: ProfileCoorDinatorNavigationDelegate) -> ProfileViewController {
        let profileViewModel = ProfileViewModel()
        let profileViewController = ProfileViewController(viewModel: profileViewModel, navigationDelegate: delegate)
        return profileViewController
    }
}
