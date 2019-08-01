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
        let appDependencies = AppDependencies()
        window = UIWindow(frame: UIScreen.main.bounds)
        let wireframe = RootWireframe(window: window!, appDependencies: appDependencies)
        wireframe.start()
        window?.makeKeyAndVisible()
        return true
    }

}

