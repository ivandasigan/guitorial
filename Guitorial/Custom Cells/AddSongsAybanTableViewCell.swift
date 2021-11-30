//
//  AddSongsAybanTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/18/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

protocol AddSongDelegate {
    func checkSongOnClick(index: Int)
}

class AddSongsAybanTableViewCell: UITableViewCell {

    var addSongDelegate : AddSongDelegate?
    var indexAyban: IndexPath?
    
    @IBOutlet weak var addSongAybanLabel: UILabel!
    @IBOutlet weak var checkAybanBtnOutlet: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func checkAybanAction(_ sender: UIButton) {
        
        addSongDelegate?.checkSongOnClick(index: indexAyban!.row)
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        sender.bounce()
    }
}
