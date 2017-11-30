
//
//  CaptureViewController.swift
//  Skillet
//
//  Created by CJ Keller on 11/29/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

class CaptureViewController: UIViewController {
    
    @IBOutlet weak var CapturePhoto: UIImageView!
    var imageToShow : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        CapturePhoto.image = imageToShow
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
