//
//  ControllerFactory.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

protocol ControllerFactory {
    func makeMainViewController() -> UISplitViewController
    func makeMasterViewController(wireframe: RootWireframe) -> MasterViewController
    func makeDetailViewController(mockData: String) -> DetailViewController
}