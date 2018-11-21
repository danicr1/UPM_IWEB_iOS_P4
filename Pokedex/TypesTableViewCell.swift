//
//  TypesTableViewCell.swift
//  Pokedex
//
//  Created by Daniel  on 31/10/2018.
//  Copyright © 2018 UPM. All rights reserved.
//

import UIKit

class TypesTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
