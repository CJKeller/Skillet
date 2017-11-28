//
//  VoterViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/27/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

var left = true

class VoterViewController: UIViewController {

    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    
    @IBOutlet weak var challenge: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func setLeft(_ sender: UIButton)
    {
        left = true
    }

    @IBAction func setRight(_ sender: UIButton)
    {
        left = false
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        button1.addTarget(self, action: #selector(setLeft), for: .touchUpInside)
        button2.addTarget(self, action: #selector(setRight), for: .touchUpInside)
        
        challenge.text = name1[myIndex] + " vs. " + name2[myIndex]
        
        switch (name1[myIndex]) {
        case "Clare": pic1.image = clare;
        case "Caillin": pic1.image = caillin;
        case  "Max": pic1.image = max;
        case "Ian": pic1.image = ian;
        case "Pat": pic1.image = pat;
        case "CJ": pic1.image = cj;
        case "Alex": pic1.image = alex;
        default: pic1.image = clare;
        }
        
        
        
        switch (name2[myIndex]) {
        case "Clare": pic2.image = clare;
        case "Caillin": pic2.image = caillin;
        case  "Max": pic2.image = max;
        case "Ian": pic2.image = ian;
        case "Pat": pic2.image = pat;
        case "CJ": pic2.image = cj;
        case "Alex": pic2.image = alex;
        default: pic2.image = clare;
        }
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
