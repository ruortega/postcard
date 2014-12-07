//
//  ViewController.swift
//  Postcard
//
//  Created by Ruben Ortega on 16/11/2014.
//  Copyright (c) 2014 IngeniApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailBotton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code wil evaluate when we press the button
        messageLabel.text=enterMessageTextField.text
        messageLabel.hidden=false
        messageLabel.textColor=UIColor.redColor()
        
        nameLabel.hidden=false
        nameLabel.text=enterNameTextField.text
        nameLabel.textColor=UIColor.blueColor()
        
        
        enterNameTextField.text=""
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.text=""
        enterMessageTextField.resignFirstResponder()//Hide keyboard
        
        mailBotton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    

}

