//
//  BucketListViewCell.swift
//  BucketListApp
//
//  Created by Erin Alleva on 9/17/17.
//  Copyright © 2017 Erin Alleva. All rights reserved.
//

import Foundation
import UIKit

class BucketListViewCell: UITableViewCell {
    
    //add other parameters?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
