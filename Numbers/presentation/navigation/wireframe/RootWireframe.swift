//
//  SplitRooter.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class RootWireframe {
    private var window: UIWindow
    private var router: Router
    private var controllerFactory: ControllerFactory
    private var appDependencies: AppDependencies
    
    init(window: UIWindow, appDependencies: AppDependencies) {
        self.window = window
        self.controllerFactory = appDependencies.controllerFactory
        self.router = RouterImpl(rootController: controllerFactory.makeMainViewController())
        self.appDependencies = appDependencies
//        self.contentRepository = contentRepository

    }
    
    func start() {
        let master = controllerFactory.makeMasterViewController(wireframe: self, contentRepository: appDependencies.contentRepository)
        master.wireframe = self
        router.setMasterController(controller: master)
        window.rootViewController = router.rootController
    }
    
    func showDetail(value: String) {
        let controller = controllerFactory.makeDetailViewController(contentRepository: appDependencies.contentRepository, name: value)
        self.router.showDetail(controller: controller)
    }
}
