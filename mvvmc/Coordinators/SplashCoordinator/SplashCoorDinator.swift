//
//  SplashCoorDinator.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol SplashCoorDinatorDelegate: AnyObject {
    func splashCoordinatorDidFinish(_ coordinator: SplashCoorDinator)
}

final class SplashCoorDinator: CoordinatorProtocol {
    let navigationController: UINavigationController
    
    weak var delegate: SplashCoorDinatorDelegate?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let splashViewModel = SplashViewModel(delegate: self)
        let splashViewController = SplashViewController(viewModel: splashViewModel)
        navigationController.setViewControllers([splashViewController], animated: true)
    }
}

extension SplashCoorDinator: SplashViewModelDelegate {
    func splashDidFinish() {
        delegate?.splashCoordinatorDidFinish(self)
    }
}
