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
        let controller = MainViewController(nibName: nil, bundle: nil)
        return controller
    }
    
    func makeMasterViewController(wireframe: RootWireframe, contentRepository: ContentRepository) -> MasterViewController {
        let controller = UIStoryboard.init(name: StoryboardValues.MAIN, bundle: nil).instantiateViewController(withIdentifier: IdentifierViewControllerValues.MASTER) as! MasterViewController
        controller.wireframe = wireframe
        controller.viewModel = MasterViewModel(contentRepository: contentRepository)
        return controller
    }
    
    func makeDetailViewController(contentRepository: ContentRepository, name: String) -> DetailViewController {
        let controller = UIStoryboard.init(name: StoryboardValues.MAIN, bundle: nil).instantiateViewController(withIdentifier: IdentifierViewControllerValues.DETAIL) as! DetailViewController
        controller.viewModel = DetailViewModel(contentRepository: contentRepository, name: name)
        return controller
    }
    
    
}
