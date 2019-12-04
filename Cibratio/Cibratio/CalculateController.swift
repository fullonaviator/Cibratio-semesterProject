//
//  CalculateController.swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class CalculateController: UIViewController {
    
    var calculatedMPG: Double = 0

    @IBOutlet weak var miTextField: UITextField!
    @IBOutlet weak var galTextField: UITextField!
    
    
    func calculateMPG() {
        let miValue = NSString(string: miTextField.text!).doubleValue
        let galValue = NSString(string: galTextField.text!).doubleValue
        
        calculatedMPG = miValue/galValue
        
        DataStore.shared.tempCalcMPG = calculatedMPG
    }
    
    @IBAction func calcButton(_ sender: UIButton) {
        calculateMPG()
    }
    
    
    
    
}
