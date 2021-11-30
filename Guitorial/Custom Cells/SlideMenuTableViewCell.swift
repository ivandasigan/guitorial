//
//  SlideMenuTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/1/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class SlideMenuTableViewCell: UITableViewCell {

 
    @IBOutlet weak var imgNavMenu: UIImageView!
    @IBOutlet weak var titleNavMenu: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
