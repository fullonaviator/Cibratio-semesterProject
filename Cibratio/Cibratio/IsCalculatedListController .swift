//
//  IsCalculatedController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class IsCalculatedListController: UIViewController, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    
    var isCalculatedDataSource = IsCalculatedDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = isCalculatedDataSource
        tableView.delegate = self
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


