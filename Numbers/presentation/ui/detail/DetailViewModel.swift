//
//  DetailViewModel.swift
//  Numbers
//
//  Created by Kévin Esprit on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

class DetailViewModel {
    private var contentRepository: ContentRepository
    private var name: String
    
    init(contentRepository: ContentRepository, name: String) {
        self.contentRepository = contentRepository
        self.name = name
    }
    
    func retrieveNumberDetail(completion: @escaping NumberDetailCompletion) {
        contentRepository.retrieveNumberDetail(with: name, completion: completion)
    }
}
