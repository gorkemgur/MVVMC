//
//  SplashViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class SplashViewController: UIViewController {
    
    private let viewModel: SplashViewModel
    
    init(viewModel: SplashViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        showInitStatus()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Fatal Error")
    }
    
    private let titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Splash"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selfPagetitle
        view.addSubview(titleLabel)
        view.backgroundColor = .white.withAlphaComponent(0.3)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        viewModel.viewDidLoad()
    }
    
    deinit {
        showDeinitStatus()
    }

}
