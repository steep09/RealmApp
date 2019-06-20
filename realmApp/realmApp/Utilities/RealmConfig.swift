//
//  RealmConfig.swift
//  realmApp
//
//  Created by Stephenson Ang on 20/06/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import Foundation
import RealmSwift

class RealmConfig {
    static var runDataConfig: Realm.Configuration {
        let realmPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent(REALM_RUN_CONFIG)
        let config = Realm.Configuration(
            fileURL: realmPath,
            schemaVersion: 0,
            migrationBlock: {migration, oldSchemaVersion in
                if (oldSchemaVersion < 0) {
                    //Nothing to do
                    //Realm with automatically detect new propertiies and remove properties
                }
        })
        return config
    }
}
