//
//  PlaylistTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/5/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var listplaylistLbl: UILabel!
    @IBOutlet weak var listplaylistImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
