//
//  ControllerFactoryImpl.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class ControllerFactoryImpl: ControllerFactory {
    func makeMainViewController() -> UISplitViewController {
        return UIStoryboard.init(name: StoryboardValues.MAIN, bundle: nil).instantiateViewController(withIdentifier: IdentifierViewControllerValues.MAIN) as! MainViewController
    }
    
    func makeMasterViewController(wireframe: RootWireframe) -> MasterViewController {
        let controller = UIStoryboard.init(name: StoryboardValues.MAIN, bundle: nil).instantiateViewController(withIdentifier: IdentifierViewControllerValues.MASTER) as! MasterViewController
        controller.wireframe = wireframe
        return controller
    }
    
    func makeDetailViewController(mockData: String) -> DetailViewController {
        let controller = UIStoryboard.init(name: StoryboardValues.MAIN, bundle: nil).instantiateViewController(withIdentifier: IdentifierViewControllerValues.DETAIL) as! DetailViewController
        controller.dataMock = mockData
        return controller
    }
    
    
}
