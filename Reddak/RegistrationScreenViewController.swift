//
//  RegistrationScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/7/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit
import CoreGraphics

class RegistrationScreenViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {

    // vars and lets
    
    @IBOutlet weak var formScrollView: UIScrollView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    
    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.formScrollView.delegate = self
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        // touch events
        
    }
    
    @IBAction func testFunction() {
        print("hello world")
    }

}
