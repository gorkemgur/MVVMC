//
//  CoordinatorProtocol.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

protocol CoordinatorProtocol: AnyObject {
    var navigationController: UINavigationController { get }
    func start()
}
