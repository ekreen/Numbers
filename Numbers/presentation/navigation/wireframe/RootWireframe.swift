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
    private var contentRepository: ContentRepository
    
    init(window: UIWindow, controllerFactory: ControllerFactory, contentRepository: ContentRepository) {
        self.window = window
        self.controllerFactory = controllerFactory
        self.router = RouterImpl(rootController: controllerFactory.makeMainViewController())
        self.contentRepository = contentRepository

    }
    
    func start() {
        let master = controllerFactory.makeMasterViewController(wireframe: self, contentRepository: contentRepository)
        master.wireframe = self
        router.setMasterController(controller: master)
        window.rootViewController = router.rootController
    }
    
    func showDetail(value: String) {
        let controller = controllerFactory.makeDetailViewController(mockData: value)
        self.router.showDetail(controller: controller)
    }
}
