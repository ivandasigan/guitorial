//
//  FavoritesTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {

    @IBOutlet weak var favLavel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
