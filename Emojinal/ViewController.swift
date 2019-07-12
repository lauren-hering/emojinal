//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Lauren Hering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emojis = ["🏊🏻‍♀️": "swimming", "🚣🏻‍♀️": "rowing", "⛹🏻‍♀️": "basketball", "🏃🏻‍♀️": "running"]
   
var facts = [
    "swimming" : "it is in water",
    "rowing" : "it is on water",
    "basketball" : "you use a ball and a basket",
    "running" : "it is on concrete"
    ]
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedSport = sender.titleLabel?.text
        let emojiFact = facts[emojis[selectedSport!]!]
        
        let alertController = UIAlertController(title: emojis[selectedSport!], message: emojiFact, preferredStyle: UIAlertController.Style.alert)
       
        alertController.addAction(UIAlertAction(title : "OK", style : UIAlertAction.Style.default, handler: nil))
   
        present(alertController, animated: true, completion: nil)
    }
    
 
}

