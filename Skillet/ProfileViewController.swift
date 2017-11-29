//
//  ProfileViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/28/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var profPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = user
        
        switch (user) {
        case "clare": profPic.image = clareB;
        case "caillin": profPic.image = caillinB;
        case "max": profPic.image = maxB;
        case "ian": profPic.image = ianB;
        case "pat": profPic.image = patB;
        case "cj": profPic.image = cjB;
        case "alex": profPic.image = alexB;
        case "joe": profPic.image = joeB;

        default: profPic.image = clare;
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
