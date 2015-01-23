//
//  ViewController.swift
//  PostCard
//
//  Created by i am awesome on 1/23/15.
//  Copyright (c) 2015 Brilliiant Driver. All rights reserved.
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
//        sender.backgroundColor = UIColor.redColor()
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        //dismiss keyboard go away after clicking button
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
//        sender.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

