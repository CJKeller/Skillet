//
//  LoginViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/28/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit
var user = ""

let name1 = ["Clare", "Caillin", "Max", "CJ", "Ian", "Pat", "Alex", "CJ", "Max", "Caillin", "Ian"]
let name2 = ["Max", "Clare", "Alex", "Pat", "Caillin", "Ian", "CJ", "Max", "Caillin", "Ian", "Pat"]

let clare = UIImage(named: "ClareY")
let caillin = UIImage(named: "CailinC")
let max = UIImage(named: "MaxK")
let cj = UIImage(named: "CJK")
let pat = UIImage(named: "PatO")
let alex = UIImage(named: "AlexS")
let ian = UIImage(named: "IanJ")

let clareB = UIImage(named: "clareBig")
let caillinB = UIImage(named: "caillinBig")
let maxB = UIImage(named: "maxBig")
let cjB = UIImage(named: "cjBig")
let patB = UIImage(named: "patBig")
let alexB = UIImage(named: "alexBig")
let ianB = UIImage(named: "ianBig")
let joeB = UIImage(named: "joeBig")


class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var maxK: UIButton!
    @IBOutlet weak var cjK: UIButton!
    @IBOutlet weak var joeB: UIButton!
    @IBOutlet weak var caillinC: UIButton!
    @IBOutlet weak var alexS: UIButton!
    @IBOutlet weak var ianJ: UIButton!
    @IBOutlet weak var clareY: UIButton!
    @IBOutlet weak var patO: UIButton!
    
    @IBAction func setUserJoe(_ sender: UIButton)
    {
        user = "joe"
    }
    
    @IBAction func setUserCJ(_ sender: UIButton)
    {
        user = "cj"
    }
    
    @IBAction func setUserClare(_ sender: UIButton)
    {
        user = "clare"
    }
    
    @IBAction func setUserCaillin(_ sender: UIButton)
    {
        user = "caillin"
    }
    
    @IBAction func setUserMax(_ sender: UIButton)
    {
        user = "max"
    }
    
    @IBAction func setUserIan(_ sender: UIButton)
    {
        user = "ian"
    }
    
    @IBAction func setUserPat(_ sender: UIButton)
    {
        user = "pat"
    }
    
    @IBAction func setUserAlex(_ sender: UIButton)
    {
        user = "alex"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joeB.addTarget(self, action: #selector(setUserJoe), for: .touchUpInside)
        cjK.addTarget(self, action: #selector(setUserCJ), for: .touchUpInside)
        clareY.addTarget(self, action: #selector(setUserClare), for: .touchUpInside)
        alexS.addTarget(self, action: #selector(setUserAlex), for: .touchUpInside)
        maxK.addTarget(self, action: #selector(setUserMax), for: .touchUpInside)
        ianJ.addTarget(self, action: #selector(setUserIan), for: .touchUpInside)
        patO.addTarget(self, action: #selector(setUserPat), for: .touchUpInside)
        caillinC.addTarget(self, action: #selector(setUserCaillin), for: .touchUpInside)
    

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
