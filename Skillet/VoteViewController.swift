//
//  VoteViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/26/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class VoteViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var names: [String] = ["Max", "Caillin", "CJ", "Ian"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
