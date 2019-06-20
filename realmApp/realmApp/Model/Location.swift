//
//  Location.swift
//  realmApp
//
//  Created by Stephenson Ang on 20/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import Foundation
import RealmSwift

class Location: Object {
    @objc dynamic private(set) public var latitude = 0.0
    @objc dynamic private(set) public var longitude = 0.0
    
    convenience init(latitude: Double, longitude: Double) {
        self.init()
        self.latitude = latitude
        self.longitude = longitude
    }
}
