//
//  ChordsCollectionViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/16/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ChordsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var chordCollectView: UIView!
    @IBOutlet weak var chordsByMajorLbl: UILabel!
    @IBOutlet weak var chordsByMajor: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        chordCollectView.layer.cornerRadius = 17
        chordCollectView.clipsToBounds = true
        
    }

}
