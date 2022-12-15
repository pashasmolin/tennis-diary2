//
//  AppDelegate.swift
//  tennis-diary-2
//
//  Created by Pasha Smolin on 12/13/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init(frame: UIScreen.main.bounds) //main container for screens
        window?.rootViewController = TennisMatchesVC.init()
        window?.makeKeyAndVisible()
        
        return true
    }
}

