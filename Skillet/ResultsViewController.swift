//
//  ResultsViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/27/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var time: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var person = ""
        
        if (left == true) {
            results.text = "You voted for " + name1[myIndex] + "!"
            person = name1[myIndex]
            
        } else {
            results.text = "You voted for " + name2[myIndex] + "!"
            person = name2[myIndex]
        }
        
        switch (person) {
        case "Clare": pic1.image = clare;
        case "Caillin": pic1.image = caillin;
        case  "Max": pic1.image = max;
        case "Ian": pic1.image = ian;
        case "Pat": pic1.image = pat;
        case "CJ": pic1.image = cj;
        case "Alex": pic1.image = alex;
        default: pic1.image = clare;
        }
        
        let curTime = String(arc4random_uniform(23) + 1)
        
        time.text = "Check back in " + curTime
    
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
