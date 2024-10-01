//
//  BaseViewController.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

class BaseViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        showInitStatus()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        showInitStatus()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selfPagetitle
    }
    
    deinit {
        showDeinitStatus()
    }

}
