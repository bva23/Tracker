//
//  SceneDelegate.swift
//  Tracker
//
//  Created by Владимир Богомолов on 01.09.2023.
//

import UIKit

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        
    }
}

