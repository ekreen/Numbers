//
//  SplitRooter.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class RootWireframe {
    private var splitViewController: UISplitViewController
    private var window: UIWindow
    private var router: Router
    private var controllerFactory: ControllerFactory
    
    init(window: UIWindow, controllerFactory: ControllerFactory) {
        self.window = window
        self.controllerFactory = controllerFactory
        self.splitViewController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        self.router = RouterImpl(rootController: controllerFactory.makeMainViewController())
        let master = controllerFactory.makeMasterViewController()
        master.router = self
        
        let detailViewController = controllerFactory.makeDetailViewController()
        router.setMasterController(controller: master)
        router.showDetail(controller: detailViewController)
        window.rootViewController = router.rootController
    }
    
    
    func showDetail(value: String) {
        let controller = controllerFactory.makeDetailViewController()
        controller.dataMock = value
        self.router.showDetail(controller: controller)
    }
}
