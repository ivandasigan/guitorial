//
//  PlaylistSongs.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/14/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation
import RealmSwift
class PlaylistSongs : Object{
    
    @objc dynamic var songs = String()
    var playlist = LinkingObjects(fromType: Playlist.self, property: "songItems")
    
}
