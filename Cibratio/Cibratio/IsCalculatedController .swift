//
//  IsCalculatedController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class IsCalculatedController: UIViewController {
    
    @IBOutlet weak var yourAverageLabel: UILabel!
    @IBOutlet weak var avgMPGLabel: UILabel!
    @IBOutlet weak var selectAVehicleLabel: UILabel!
    var carIndex: Int = 0
    
    @IBAction func submitButton(_ sender: Any) {
        let newEntry = MpgEntry(mpg: 0.0, date: Date())
        DataStore.shared.cars[carIndex].entries.append(newEntry)
    }
    
}
