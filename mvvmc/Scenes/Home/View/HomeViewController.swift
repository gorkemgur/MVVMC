//
//  HomeViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

enum HomeViewOutput {
    case showSuccessMessage(String)
}

protocol HomeViewDelegate: AnyObject {
    func handleOutput(_ output: HomeViewOutput)
}

final class HomeViewController: BaseViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "Home"
        return label
    }()
    
    private let viewModel: HomeViewModel
    weak var navigationDelegate: HomeCoorDinatorNavigationDelegate?
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.view = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("Fatal Error")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        viewModel.viewDidLoad()
    }
    
    /*
     func navigateSomeWhere() {
        navigationDelegate?.handleNavigation(.sample(id: 0, pageTitle: "PAGE"))
     }
     */
}

extension HomeViewController: HomeViewDelegate {
    func handleOutput(_ output: HomeViewOutput) {
        switch output {
        case .showSuccessMessage(let successMessage):
            titleLabel.text = successMessage
            titleLabel.textColor = .red
        }
    }
}
