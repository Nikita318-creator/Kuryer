//
//  AppDelegate.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit
import FirebaseCore
import YandexMapsMobile

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }
}

