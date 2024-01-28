//
//  AppDelegate.swift
//  waterapp
//
//  Created by Pervin Çalışkan on 28.01.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds) // create ettik
        window?.rootViewController = SplashViewController()
        window?.makeKeyAndVisible()
        return true
    }

   
   


}

