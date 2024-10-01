//
//  SplashViewModel.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import Foundation

protocol SplashNavigationDelegate: AnyObject {
    func splashDidFinish()
}

final class SplashViewModel {
    private let delegate: SplashNavigationDelegate
    
    init(delegate: SplashNavigationDelegate) {
        self.delegate = delegate
    }
    
    func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) { [weak self] in
            guard let self = self else { return }
            self.delegate.splashDidFinish()
        }
    }
}
