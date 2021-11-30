//
//  ChordschartCollectionViewCell.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/13/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class ChordschartCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var chordView: UIView!
    @IBOutlet weak var chordChartLabel: UILabel!
    @IBOutlet weak var chordChartImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        chordView.layer.cornerRadius = 17
      chordView.clipsToBounds = true
        
    }

}
