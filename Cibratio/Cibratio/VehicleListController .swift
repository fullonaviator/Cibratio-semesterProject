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

   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        DataStore.shared.latestIndexPath = indexPath.row
    }
    
    
    override func viewDidLoad() {
        
        tableView.dataSource = vehicleDataSource
        tableView.delegate = self
        print(DataStore.shared.addedIndexPath)
    }
    
}
