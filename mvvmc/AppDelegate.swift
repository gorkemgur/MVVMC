//
//  AppDelegate.swift
//  mvvmc
//
//  Created by Görkem Gür on 1.10.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoorDinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let factory = CoordinatorFactoryImpl()
        appCoorDinator = AppCoordinator(navigationController: UINavigationController(), factory: factory)
        appCoorDinator?.start()
        window?.rootViewController = appCoorDinator?.navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}

