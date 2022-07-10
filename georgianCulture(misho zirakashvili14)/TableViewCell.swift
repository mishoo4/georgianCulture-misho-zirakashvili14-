//
//  TableViewCell.swift
//  georgianCulture(misho zirakashvili14)
//
//  Created by misho zirakashvili on 10.07.22.
//

import UIKit

class TableViewCell: UITableViewCell {
    var yesButton: (() -> Void)!
    
    @IBAction func yes(_ sender: UIButton) {
        yesButton()
    }
    
    @IBAction func no(_ sender: UIButton) {
        removeFromSuperview()
    }
    
}
