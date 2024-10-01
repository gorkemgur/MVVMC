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
        let splashViewController = SplashBuilder.generateSplashView(splashNavigationDelegate: self)
        navigationController.setViewControllers([splashViewController], animated: true)
    }
}

extension SplashCoorDinator: SplashNavigationDelegate {
    func splashDidFinish() {
        delegate?.splashCoordinatorDidFinish(self)
    }
}
