//
//  NativeSongs.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/9/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation

class NativeSongs {
    
    var nativeSongImg: UIImage?
    var nativeSongTitle: String = ""
    var nativeSongArtist: String?
    var nativeSongPartialLyrics: String?
    var lyricsnChords: String?
    var isFavorite: Bool
    var isPlay: Bool
    
    init(songImg: UIImage, songTitle: String,songArtist: String ,songLyrics: String, lyricsnchords: String, isFav: Bool, isPlay: Bool) {
        self.nativeSongImg = songImg
        self.nativeSongTitle = songTitle
        self.nativeSongArtist = songArtist
        self.nativeSongPartialLyrics = songLyrics
        self.lyricsnChords = lyricsnchords
        self.isFavorite = isFav
        self.isPlay = isPlay
    }
        
}
