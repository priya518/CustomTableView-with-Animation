//
//  MyTableViewCell.swift
//  CustomTableView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var Name: UILabel!
    
    @IBOutlet weak var Number: UILabel!
    
    @IBOutlet weak var Email: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
