//
//  AppDelegate.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let controllerFactory = ControllerFactoryImpl()
        let wireframe = RootWireframe(window: window!, controllerFactory: controllerFactory)
        window?.makeKeyAndVisible()
        return true
    }

}

