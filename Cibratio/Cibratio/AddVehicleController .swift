//
//  AddVehicleController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class AddVehicleController: UIViewController {
    
    

    @IBOutlet var makeTextField: UITextField!
    @IBOutlet var modelTextField: UITextField!
    @IBOutlet var yearTextField: UITextField!
    
    
    @IBAction func cancelButton(_ sender: Any) {
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        addVehicle()
    }
    
    
    func addVehicle() {
        
        let newCar = Car(make: makeTextField.text!, model: modelTextField.text!, year: yearTextField.text!, entries: nil)
        let newEntry = MpgEntry(mpg: nil, date: nil)
        
        DataStore.shared.cars.append(newCar)
        DataStore.shared.entry.append(newEntry)
        
    }
    
}
