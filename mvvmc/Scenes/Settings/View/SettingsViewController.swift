//
//  SettingsViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol SettingsViewDelegate: AnyObject {
    func handleOutput(_ splashViewOutput: SettingsViewOutput)
}

enum SettingsViewOutput {
    case updateTitle(String)
}

final class SettingsViewController: UIViewController {
    
    private let viewModel: SettingsViewModel
    
    init(viewModel: SettingsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.view = self
        showInitStatus()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Fatal Error")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewDidLoad()
        view.backgroundColor = .darkGray
    }
    
    deinit {
        showDeinitStatus()
    }
    
}

extension SettingsViewController: SettingsViewDelegate {
    func handleOutput(_ splashViewOutput: SettingsViewOutput) {
        switch splashViewOutput {
        case .updateTitle(let pageTitle):
            title = pageTitle
        }
    }
}
