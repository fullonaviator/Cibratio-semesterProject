//
//  IsCalculatedController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class IsCalculatedListController: UITableViewController {
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    var dataStore = DataStore.shared
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let car = DataStore.shared.cars[dataStore.selectedVehicleIndexPath]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "labelsCell") as! LabelsCell
            cell.avgMPGLabel.text? = "\(dataStore.tempCalcMPG)"
            cell.epaEstimateCell.text? = "\(30.1)"
            return cell
        }
        else if indexPath.row == 1 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "vehicleSelectionCell") as! VehicleSelectionCell
            cell.textLabel!.text = car.year + " " + car.make + " " + car.model
            
            
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonsCell") as! ButtonsCell
            cell.backButton((Any).self)
            cell.submitButton((Any).self)
            cell.delegate = self
            
            return cell
        }
    }
    
}

extension IsCalculatedListController: ButtonCellDelagate {
    
    func didTapSubmitButton() {
        
        let indexPath = DataStore.shared.selectedVehicleIndexPath
        
        let newEntry = MpgEntry(mpg: dataStore.tempCalcMPG, date: Date())
        dataStore.cars[indexPath].entries?.append(newEntry)
        
}
    
    func didTapBackButton() {
        return
    }
    
}







//    @IBOutlet weak var avgMPGLabel: UILabel!
//    @IBOutlet weak var selectAVehicleLabel: UILabel!
//
//    var carIndex: Int = 0
//
//    @IBAction func submitButton(_ sender: Any) {
////        let newEntry = MpgEntry(mpg: 0.0, date: Date())
////        DataStore.shared.cars[carIndex].entries.append(newEntry)
//  }
//
//    func setLabels() {
//        avgMPGLabel.text! = "\(DataStore.shared.tempCalcMPG)"
//    }
//
//    override func viewDidLoad() {
//        setLabels()
//    }


