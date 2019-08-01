//
//  HttpManager.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

protocol HttpManager {
    func retrieveAllNumbers(completion: @escaping NumbersCompletion)
    func retrieveNumberDetail(with name: String, completion: @escaping NumberDetailCompletion)
}
