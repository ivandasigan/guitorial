//
//  LyricsnChordsViewController.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/6/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import UIKit

class LyricsnChordsViewController: UIViewController {

    @IBOutlet weak var titleLyricsnChords: UILabel!
    @IBOutlet weak var artistLyricsnChords: UILabel!
    @IBOutlet weak var lyricsnChordsTextView: UITextView!
    
    var passLyricsnChords = String()
    var passTitle = String()
    var passArtist = String()
    var isScroll = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lyricsnChordsTextView.isEditable = false
        titleLyricsnChords.text = passTitle
        artistLyricsnChords.text = passArtist
        lyricsnChordsTextView.text = passLyricsnChords
        
        
    }
    

}
