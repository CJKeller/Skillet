//
//  PlayerViewController.swift
//  Skillet
//
//  Created by CJ Keller on 11/26/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var FreeStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FreeStyle.layer.cornerRadius = 8
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
