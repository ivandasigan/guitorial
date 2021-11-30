//
//  PlaylistRealm.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/14/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation
import RealmSwift
class Playlist : Object{
    
    @objc dynamic var addPlaylistImage = Data()
    @objc dynamic var addPlaylistName = String()
    var songItems = List<PlaylistSongs>()
    
}
