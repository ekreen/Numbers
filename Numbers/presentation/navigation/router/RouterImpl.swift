//
//  RouterImpl.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class RouterImpl: Router {
    var rootController: UISplitViewController
    private var masterNavigationController: UINavigationController
    private var detailNavigationController: UINavigationController
    
    init(rootController: UISplitViewController) {
        self.rootController = rootController
        self.masterNavigationController = UINavigationController()
        self.detailNavigationController = UINavigationController()
        rootController.viewControllers = [masterNavigationController, detailNavigationController]
    }
    
    func setMasterController(controller: UIViewController) {
        masterNavigationController.setViewControllers([controller], animated: false)
    }
    
    func showDetail(controller: UIViewController) {
        detailNavigationController.setViewControllers([controller], animated: false)
        rootController.showDetailViewController(detailNavigationController, sender: nil)
    }
}
