//
//  ContentRepository.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

class ContentRepository {
    
    private var httpManager: HttpManager
    
    init(httpManager: HttpManager) {
        self.httpManager = httpManager
    }
    
    func retrieveNumberList(completion: @escaping NumbersCompletion) {
        httpManager.retrieveAllNumbers(completion: completion)
    }
    
    func retrieveNumberDetail(with name: String, completion: @escaping NumberDetailCompletion) {
        httpManager.retrieveNumberDetail(with: name, completion: completion)
    }
    
}
