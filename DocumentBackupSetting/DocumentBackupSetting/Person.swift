//
//  Person.swift
//  DocumentBackupSetting
//
//  Created by hsnm on 2017/02/11.
//  Copyright © 2017年 hsnm. All rights reserved.
//

import Foundation
import RealmSwift

internal final class Person: Object {
    dynamic var id      = 0
    dynamic var age     = 0
    dynamic var name    = ""
    
    // MARK: - Realm Object Override
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
