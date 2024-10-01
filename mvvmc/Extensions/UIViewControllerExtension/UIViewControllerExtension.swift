//
//  UIViewControllerExtension.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

extension UIViewController {
    //If you want to use custom title for viewController you can remove that from BaseViewController
    var selfPagetitle: String {
        String(describing: type(of: self)).replacingOccurrences(of: "ViewController", with: "")
    }
    
    func showDeinitStatus() {
        print("🚮 Deinit \(type(of: self))")
    }
    
    func showInitStatus() {
        print("✅ Init \(type(of: self))")
    }
}
