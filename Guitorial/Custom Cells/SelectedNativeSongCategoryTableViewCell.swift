//
//  SelectedNativeSongCategoryTableViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/5/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

protocol SelectedNativeSongsFavDelegate {
    func favOnClickCell(_ index: Int)
    func playOnClickCell(_ index: Int)
}

class SelectedNativeSongCategoryTableViewCell: UITableViewCell {

    var favCellDelegate : SelectedNativeSongsFavDelegate?
    var index: IndexPath?

    @IBOutlet weak var selectedNativeSongInitLyricsLabel: UILabel!
    @IBOutlet weak var selectedNativeSongArtistLabel: UILabel!
    @IBOutlet weak var selectedNativeSongTitleLabel: UILabel!
    @IBOutlet weak var selectedNativeSongCatImageView: UIImageView!
    @IBOutlet weak var isFavBtnOutlet: UIButton!
    @IBOutlet weak var isPlayBtnOutlet: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func favAction(_ sender: UIButton) {
        
        favCellDelegate?.favOnClickCell(index!.row)
        
        if sender.isSelected{
            sender.isSelected = false
        }else{
            sender.isSelected = true
        }
        
        sender.bounce()
        
    }
    @IBAction func playAction(_ sender: UIButton) {
        favCellDelegate?.playOnClickCell(index!.row)
        if sender.isSelected{
            sender.isSelected = false
        }else {
            sender.isSelected = true
        }
        sender.bounce()
    }
    
}
