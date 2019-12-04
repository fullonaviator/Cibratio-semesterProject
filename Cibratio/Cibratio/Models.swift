//
//  Models.swift
//  Cibratio
//
//  Created by Burton, Andrew M on 12/3/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import Foundation

struct Car {
    var make: String
    var model: String
    var year: String
    var entries: [MpgEntry]? = []
    
}

struct MpgEntry {
    var mpg: Double?
    var date: Date?
    
}

struct tempMPG {
    var tempCalcMPG: Double
}
