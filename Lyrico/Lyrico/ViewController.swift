//
//  ViewController.swift
//  Lyrico
//
//  Created by Alisha Lakkad on 9/16/17.
//  Copyright © 2017 Alisha Lakkad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func letsPlayButton(_ sender: Any) {
        performSegue(withIdentifier: "moveToPlay", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

