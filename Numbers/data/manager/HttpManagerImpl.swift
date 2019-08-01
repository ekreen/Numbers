//
//  HttpManagerImpl.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

class HttpManagerImpl: HttpManager {
    
    private let tappticUrl = "http://dev.tapptic.com/test/json.php"
    
    func retrieveAllNumbers(completion: @escaping NumbersCompletion) {
        
        guard let url = URL(string: tappticUrl) else {
            completion(nil, HttpManagerError.badUrl)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            
            guard let data = data else {
                completion(nil, HttpManagerError.noData)
                return
            }
            
            
            let decoder = JSONDecoder.init()
            guard let result = try? decoder.decode([Number].self, from: data) else {
                completion(nil, HttpManagerError.noData)
                return
            }
            
            completion(result, nil)
        }
        
        task.resume()
        
    }
    
    func retrieveNumberDetail(with name: String, completion: @escaping NumberDetailCompletion) {
        guard var component = URLComponents(string: tappticUrl) else {
            completion(nil, HttpManagerError.badUrl)
            return
        }
        
        component.queryItems = [URLQueryItem(name: "name", value: name)]
        
        let task = URLSession.shared.dataTask(with: component.url!) { (data, response, error) in
            guard error == nil else {
                completion(nil, error)
                return
            }
            
            
            guard let data = data else {
                completion(nil, HttpManagerError.noData)
                return
            }
            
            let decoder = JSONDecoder.init()
            guard let result = try? decoder.decode(NumberDetail.self, from: data) else {
                completion(nil, HttpManagerError.noData)
                return
            }
            
            completion(result, nil)
        }
        
        task.resume()
    }
}
