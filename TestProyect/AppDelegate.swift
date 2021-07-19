//
//  AppDelegate.swift
//  TestProyect
//
//  Created by Usuario on 15/07/2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window

        let navigationController = UINavigationController(rootViewController: ProductListViewController())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        return true
    }
}

