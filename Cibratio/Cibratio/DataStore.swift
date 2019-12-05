//
//  DataStore.swift
//  Cibratio
//
//  Created by Burton, Andrew M on 12/3/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    var cars: [Car] = []
    var entry: [[MpgEntry]] = []
    
    var tempCalcMPG: Double = 0
    
    var addedIndexPath: Int = 0 
    var latestIndexPath: Int = 0
    var selectedVehicleIndexPath: Int = 0
    
    
    

    
    
    
    
    
    
    
    
}
