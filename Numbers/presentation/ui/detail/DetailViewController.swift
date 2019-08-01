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
    @IBOutlet weak var numberImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Properties
    var dataMock: String?
    var viewModel: DetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareVC()
    }
}

// MARK: - Private functions
private extension DetailViewController {
    
    func prepareVC() {
        navigationItem.leftBarButtonItem =
            splitViewController?.displayModeButtonItem
        navigationItem.leftItemsSupplementBackButton = true
        
        loadData()
    }
    
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
                
                strongSelf.nameLabel.text = result.name
                strongSelf.title = "Number \(result.name)"
                
                guard let url = URL(string: result.image) else {
                    return
                }
                strongSelf.numberImage.sd_setImage(with: url, completed: nil)
            }
        }
    }
}
