//
//  AppDelegate.swift
//  Tracker
//
//  Created by Владимир Богомолов on 01.09.2023.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }
}
