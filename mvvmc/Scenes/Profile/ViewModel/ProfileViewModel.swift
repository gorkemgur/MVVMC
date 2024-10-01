//
//  ProfileViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

final class ProfileViewModel {
    weak var view: ProfileViewDelegate?
    
    func viewDidLoad() {
        view?.handleOutput(.showSuccessMessage("Page Loaded"))
    }
    
}
