//
//  VehicleController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class VehicleController: UIViewController {
    
    
    
    //var mpgEntry = DataStore.shared.entry[DataStore.shared.selectedVehicleIndexPath]
    
    @IBOutlet weak var avgMPGLabel: UILabel!
    @IBOutlet weak var epaMPGLabel: UILabel!
    
    func setLabels (){
        
        avgMPGLabel.text! = "\(DataStore.shared.tempCalcMPG)"
        print("\(DataStore.shared.cars[DataStore.shared.selectedVehicleIndexPath].entries)")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setLabels()
    }
    
        

}
