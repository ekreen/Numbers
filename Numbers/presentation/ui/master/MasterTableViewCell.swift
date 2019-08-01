//
//  MasterTableViewCell.swift
//  Numbers
//
//  Created by Kévin Esprit on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class MasterTableViewCell: UITableViewCell {

    @IBOutlet weak var numberImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func populate(with numberDetail: Number) {
        nameLabel.text = numberDetail.name
    }

}
