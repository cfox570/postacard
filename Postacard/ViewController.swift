//
//  ViewController.swift
//  Postacard
//
//  Created by Craig Fox on 10/24/14.
//  Copyright (c) 2014 Delphinium Systems Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // show the the Label and show the sender name
        // test commit one
        // test commit two

        messageLabel.text = enterNameTextField.text
        + ": " + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // messageLabel.text = enterNameTextField.text
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        messageLabel.hidden = false
        
    }
}

