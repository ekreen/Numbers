//
//  DetailViewController.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var mockLabel: UILabel!
    
    // MARK: - Properties
    var dataMock: String?
    var viewModel: DetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem =
            splitViewController?.displayModeButtonItem
        navigationItem.leftItemsSupplementBackButton = true
        
        loadData()
    }
}


private extension DetailViewController {
    func loadData() {
        viewModel.retrieveNumberDetail { (result, error) in
            guard error == nil else {
                print(error!)
                return
            }
            
            guard let result = result else {
                return
            }
            
            DispatchQueue.main.async { [weak self] in
                
                guard let strongSelf = self else {
                    return
                }
                
                strongSelf.mockLabel.text = result.name
                strongSelf.title = result.name
            }
        }
    }
}
