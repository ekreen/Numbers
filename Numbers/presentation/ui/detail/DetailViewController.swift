//
//  DetailViewController.swift
//  Numbers
//
//  Created by Kevin ESPRIT on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var mockLabel: UILabel!
    
    var dataMock: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.leftBarButtonItem =
            splitViewController?.displayModeButtonItem
        navigationItem.leftItemsSupplementBackButton = true
        
        mockLabel.text = dataMock
    }
}
