//
//  AppDelegate.swift
//  CarsPlayer
//
//  Created by Ahmed Elesawy on 27/07/2022.
//

import UIKit
import CoreData
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootViewController()
        return true
    }
    
    func setupRootViewController() {
        window = UIWindow()
        let viewController =  RootRouter.root.destinationViewController
        let navigation = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }
}

