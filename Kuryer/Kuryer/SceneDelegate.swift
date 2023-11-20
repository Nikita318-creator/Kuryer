//
//  SceneDelegate.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    @available(iOS 13.0, *)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            
            let window = UIWindow(windowScene: windowScene)
            let navController = UINavigationController()
            let viewController = ViewController()
            
            navController.viewControllers = [viewController]
            window.rootViewController = navController
            self.window = window
            
            window.makeKeyAndVisible()
        }
    }
   

}

