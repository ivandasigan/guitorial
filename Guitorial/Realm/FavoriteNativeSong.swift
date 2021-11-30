//
//  FavoriteNativeSong.swift
//  Guitorial
//
//  Created by Ivan Dasigan on 3/11/20.
//  Copyright © 2020 Ivan Dasigan. All rights reserved.
//

import Foundation
import RealmSwift

class FavoriteNativeSong : Object {
    
    @objc dynamic var title = String()
    @objc dynamic var isFavIndex = Int()
    
}


