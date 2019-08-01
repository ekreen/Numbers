//
//  MasterViewModel.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation


class MasterViewModel {
    
    private var contentRepository: ContentRepository
    
    init(contentRepository: ContentRepository) {
        self.contentRepository = contentRepository
    }
    
    func retrieveNumberList(completion: @escaping NumbersCompletion) {
        contentRepository.retrieveNumberList(completion: completion)
    }
}
