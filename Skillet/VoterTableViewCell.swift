//
//  VoterTableViewCell.swift
//  Skillet
//
//  Created by Max Kucera on 11/27/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class VoterTableViewCell: UITableViewCell {

    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var myButton: UIButton!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
