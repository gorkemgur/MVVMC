//
//  ProfileViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

enum ProfileViewOutput {
    case showSuccessMessage(String)
}
//Handle viewmodel output and show in view, this way is better to write unit tests 
protocol ProfileViewDelegate: AnyObject {
    func handleOutput(_ output: ProfileViewOutput)
}

final class ProfileViewController: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Profile"
        return label
    }()
    
    private lazy var showSettingsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show Settings", for: .normal)
        button.tintColor = .blue
        button.addTarget(self, action: #selector(showSettings), for: .touchUpInside)
        return button
    }()
    
    private let viewModel: ProfileViewModel
    private let navigationDelegate: ProfileCoorDinatorNavigationDelegate
    
    init(viewModel: ProfileViewModel, navigationDelegate: ProfileCoorDinatorNavigationDelegate) {
        self.viewModel = viewModel
        self.navigationDelegate = navigationDelegate
        super.init(nibName: nil, bundle: nil)
        self.viewModel.view = self
        showInitStatus()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = selfPagetitle
        view.backgroundColor = .white.withAlphaComponent(0.65)
        view.addSubViews([
            titleLabel,
            showSettingsButton
        ])
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        NSLayoutConstraint.activate([
            showSettingsButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            showSettingsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        viewModel.viewDidLoad()
    }
    
    @objc private func showSettings() {
        navigationDelegate.handleNavigation(.settings("SettingsPage"))
    }
    
    deinit {
        showDeinitStatus()
    }
}

extension ProfileViewController: ProfileViewDelegate {
    func handleOutput(_ output: ProfileViewOutput) {
        switch output {
        case .showSuccessMessage(let string):
            titleLabel.text = "Profile \(string)"
        }
    }
}
