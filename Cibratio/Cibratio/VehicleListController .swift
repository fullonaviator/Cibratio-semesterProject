//
//  VehicleListController .swift
//  Cibratio
//
//  Created by Andrew Burton on 12/2/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

class VehicleListController: UIViewController, UITableViewDelegate  {
    
    var vehicleDataSource =  VehicleDataSource()
    
    @IBOutlet var tableView: UITableView!
    
    var newEntry1 = MpgEntry(mpg: 30.0, date: Date())

   
    
    override func viewDidLoad() {
        
        tableView.dataSource = vehicleDataSource
        tableView.delegate = self
    }
    
}
