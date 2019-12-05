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
        var dataStore = DataStore.shared
        
        let newEntry = MpgEntry(mpg: 1.1, date: Date())
        dataStore.entry.append([newEntry])
        
        let newCar = Car(make: makeTextField.text!, model: modelTextField.text!, year: yearTextField.text!, entries: nil)
        dataStore.cars.append(newCar)
        
        
    }
    
}
