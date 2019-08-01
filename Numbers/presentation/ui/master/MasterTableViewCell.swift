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

    // MARK: - Outlets
    @IBOutlet weak var numberImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        numberImage.sd_imageIndicator = SDWebImageActivityIndicator.gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            changeColor(backgroundColor: .red, textColor: .white)
        } else {
            changeColor()
        }
    }
    
    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        if highlighted {
            changeColor(backgroundColor: .blue, textColor: .white)
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

private extension MasterTableViewCell {
    func changeColor(backgroundColor: UIColor = .white, textColor: UIColor = .black) {
        self.backgroundColor = backgroundColor
        nameLabel.textColor = textColor
    }
}
