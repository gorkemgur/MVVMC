//
//  UIView+Extension.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

extension UIView {
    //Add Multiple SubViews
    func addSubViews(_ views: [UIView]) {
        views.forEach { addSubview($0) }
    }
}
