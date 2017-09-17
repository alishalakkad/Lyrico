//
//  CongratsViewController.swift
//  Lyrico
//
//  Created by Alisha Lakkad on 9/16/17.
//  Copyright © 2017 Alisha Lakkad. All rights reserved.
//

import UIKit

class CongratsViewController: UIViewController {

    @IBOutlet weak var scoreEndPageLabel: UILabel!
    @IBAction func backToHomePage(_ sender: Any) {
        performSegue(withIdentifier: "backToHomePage", sender: self)
    }
    
    @IBOutlet weak var totalPlayedLabel: UILabel!
    
    var score: Int!
    var totalPlayed: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scoreEndPageLabel.text = String (score)
        self.totalPlayedLabel.text = String (totalPlayed)
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
