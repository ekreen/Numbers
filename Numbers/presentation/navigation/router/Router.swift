//
//  Router.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

protocol Router {
    var rootController: UISplitViewController { get }
    
    func setMasterController(controller: UIViewController)
    func showDetail(controller: UIViewController)
}
