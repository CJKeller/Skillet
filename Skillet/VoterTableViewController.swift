//
//  VoterTableViewController.swift
//  Skillet
//
//  Created by Max Kucera on 11/27/17.
//  Copyright © 2017 4CookingDummies. All rights reserved.
//

import UIKit

let name1 = ["Clare", "Caillin", "Max", "CJ", "Ian", "Pat", "Alex", "CJ", "Max", "Caillin", "Ian"]
let name2 = ["Max", "Clare", "Alex", "Pat", "Caillin", "Ian", "CJ", "Max", "Caillin", "Ian", "Pat"]
let clare = UIImage(named: "ClareY")
let caillin = UIImage(named: "CailinC")
let max = UIImage(named: "MaxK")
let cj = UIImage(named: "CJK")
let pat = UIImage(named: "PatO")
let alex = UIImage(named: "AlexS")
let ian = UIImage(named: "IanJ")

var myIndex = 0

class VoterTableViewController: UITableViewController {

    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return name1.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       // myIndex = indexPath.row
       // performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! VoterTableViewCell
        let curTime = String(arc4random_uniform(23) + 1)
        cell.selectionStyle = .none
        
        cell.name.text = "vs."
        cell.time.text = curTime + " hours left!"
        cell.myButton.tag = indexPath.row
        cell.myButton.addTarget(self, action: #selector(raceInfoBtn), for: .touchUpInside)
        cell.pic1.image = cj
        cell.pic2.image = pat
      
        switch (name1[indexPath.row]) {
        case "Clare": cell.pic1.image = clare;
        case "Caillin": cell.pic1.image = caillin;
        case  "Max": cell.pic1.image = max;
        case "Ian": cell.pic1.image = ian;
        case "Pat": cell.pic1.image = pat;
        case "CJ": cell.pic1.image = cj;
        case "Alex": cell.pic1.image = alex;
        default: cell.pic1.image = clare;
        }
        
        switch (name2[indexPath.row]) {
        case "Clare": cell.pic2.image = clare;
        case "Caillin": cell.pic2.image = caillin;
        case  "Max": cell.pic2.image = max;
        case "Ian": cell.pic2.image = ian;
        case "Pat": cell.pic2.image = pat;
        case "CJ": cell.pic2.image = cj;
        case "Alex": cell.pic2.image = alex;
        default: cell.pic2.image = clare;
        }
        

        return cell
    }

@IBAction func raceInfoBtn(_ sender: UIButton)
{
    myIndex = sender.tag
}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
  /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "voteScene"{
            //Creating an object of the second View controller
            let controller = segue.destinationViewController as! iOSTutorialsViewControllerClass
            //Sending the data here
            controller.SecondArray = sendSelectedData as! String
    }*/
 

}
