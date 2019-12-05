//
//  ButtonsCell.swift
//  Cibratio
//
//  Created by Burton, Andrew M on 12/4/19.
//  Copyright © 2019 Andrew Burton. All rights reserved.
//

import UIKit

protocol ButtonCellDelagate {
    
    func didTapBackButton()
    func didTapSubmitButton()
}

class ButtonsCell: UITableViewCell {
    
    var delegate: ButtonCellDelagate?
    
    @IBAction func backButton(_ sender: Any) {
        delegate?.didTapBackButton()
    }
    
    @IBAction func submitButton(_ sender: Any) {
        delegate?.didTapSubmitButton()
        
    }
    
    
}
