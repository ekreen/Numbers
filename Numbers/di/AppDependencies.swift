//
//  AppDependencies.swift
//  Numbers
//
//  Created by Kévin Esprit on 02/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

class AppDependencies {
    
    let httpManager: HttpManager
    let contentRepository: ContentRepository
    let controllerFactory: ControllerFactory
    
    init() {
        self.httpManager = HttpManagerImpl()
        self.contentRepository = ContentRepository(httpManager: httpManager)
        self.controllerFactory = ControllerFactoryImpl()
    }
}
