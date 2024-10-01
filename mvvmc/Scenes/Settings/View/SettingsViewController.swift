//
//  SettingsViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

final class SettingsViewController: BaseViewController {
    
    private let pageTitle: String
    
    init(pageTitle: String) {
        self.pageTitle = pageTitle
        super.init(nibName: nil, bundle: nil)
        self.title = pageTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("Fatal Error")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
    
}
