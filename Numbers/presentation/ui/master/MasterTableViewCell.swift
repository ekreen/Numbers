//
//  MasterTableViewCell.swift
//  Numbers
//
//  Created by Kévin Esprit on 01/08/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit
import SDWebImage

class MasterTableViewCell: UITableViewCell {

    @IBOutlet weak var numberImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            self.backgroundColor = .red
            nameLabel.textColor = .white
        } else {
            self.backgroundColor = .white
            nameLabel.textColor = .black
        }
    }
    
    func populate(with number: Number) {
        nameLabel.text = number.name
        guard let url = URL(string: number.image) else {
            return
        }
        numberImage.sd_setImage(with: url, completed: nil)
    }

}
