//
//  IsCalculatedDataSource.swift
//  Cibratio
//
//  Created by Burton, Andrew M on 12/4/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class IsCalculatedDataSource: NSObject, UITableViewDataSource {
    
    var dataStore = DataStore.shared
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "labelsCell") as! LabelsCell
            cell.avgMPGLabel.text? = "\(dataStore.tempCalcMPG)"
            cell.epaEstimateCell.text? = "\(30.1)"
            return cell
        }
        else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleSelectionCell") as! VehicleSelectionCell
            cell.self

            
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonsCell") as! ButtonsCell
            cell.backButton((Any).self)
            cell.submitButton((Any).self)
            
            return cell
        }
    }
}
