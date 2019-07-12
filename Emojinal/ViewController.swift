//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Lauren Hering. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var customMessage = [
        "swimming" : ["it is in water", "Olympic sized pools have enough water to take 9,400 baths", "Swimming became an Olympic sport in 1896"],
        
        "rowing" : ["it is on water", "Rowing was the first intercollegiate sport contested  in the United States. The first rowing race was between Harvard and Yale in 1852", "Rowing is one of the original sports in the modern Olympic Games."],
       
        "basketball" : ["you use a ball and a basket", "Women’s basketball was added to the  Olympics in 1976", "The positions of players in a basketball game are: Point guard, Shooting guard, Small forward, Power forward and Center"],
        
        "running" : ["you use your feet", "The fastest human footspeed on record is 12.4 m/s seen during a 100-meter sprint.", "112 ligaments, 26 bones, 33 joints, nerves, blood vessels and tendons work together when we run."]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emojis = ["🏊🏻‍♀️": "swimming", "🚣🏻‍♀️": "rowing", "⛹🏻‍♀️": "basketball", "🏃🏻‍♀️": "running"]
   
//var facts = [
  //  "swimming" : "it is in water",
   // "rowing" : "it is on water",
   // "basketball" : "you use a ball and a basket",
  //  "running" : "it is outside, inside, or on a treadmil"
  //  ]
    
    @IBAction func showMessage(sender: UIButton) {
        
        let number = Int.random(in: 0 ... 2)
        let selectedSport = sender.titleLabel?.text
        //let emojiFact = facts[emojis[selectedSport!]!]
        
        let emojiMessage = customMessage[emojis[selectedSport!]!]?[number]
        
        let alertController = UIAlertController(title: emojis[selectedSport!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
       
        alertController.addAction(UIAlertAction(title : "OK", style : UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title : "BYE", style : UIAlertAction.Style.default, handler: nil))
   
        present(alertController, animated: true, completion: nil)
    }
    
 
}
