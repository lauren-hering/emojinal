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

    @IBAction func showMessage(sender: UIButton) {
        
        let alertController = UIAlertController(title: "this is an alert", message: "hello", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title : "ok", style : UIAlertAction.Style.default, handler: nil))
   
        present(alertController, animated: true, completion: nil)
    }
    
 
}

