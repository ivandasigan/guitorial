//
//  AddSongsTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

protocol CheckPlMusicDelegate {
    func addPlMusicOnClickCell(_ index: Int)
}

class AddSongsTableViewCell: UITableViewCell {
    
    var checkPlMusicDelegate: CheckPlMusicDelegate?
    var index: IndexPath?
    @IBOutlet weak var songsAddPlaylistLabel: UILabel!
    
    @IBOutlet weak var checkSongBtnOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func checkAction(_ sender: UIButton) {
        
        checkPlMusicDelegate?.addPlMusicOnClickCell(index!.row)
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
        sender.bounce()
    }
    
}
