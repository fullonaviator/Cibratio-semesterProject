//
//  VehicleDataSource.swift
//  Cibratio
//
//  Created by Burton, Andrew M on 12/4/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class VehicleDataSource: NSObject, UITableViewDataSource {
    
    var myIndexPath: Int = 0
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStore.shared.cars.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let car = DataStore.shared.cars[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleCell", for: indexPath)
        
        cell.textLabel!.text = car.year + " " + car.make + " " + car.model
        
        DataStore.shared.addedIndexPath += 1
        
        
        return cell
    }
    
}
