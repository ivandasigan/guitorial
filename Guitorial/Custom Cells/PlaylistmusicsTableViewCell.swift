//
//  PlaylistmusicsTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/16/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class PlaylistmusicsTableViewCell: UITableViewCell {
    @IBOutlet weak var playlistMusicLabel: UILabel!
    
    @IBOutlet weak var playlistImage: UIImageView!
    @IBOutlet weak var playlistBelongLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
