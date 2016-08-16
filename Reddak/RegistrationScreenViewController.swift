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
    let model = LoginAndRegistrationModel()
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    

    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        // touch events
        
    }

    @IBAction func attemptToSignUp() {
        self.model.registerUserWith(email: self.emailField.text!, password: self.passwordField.text!, repeatPassword: self.repeatPasswordField.text!)
    }
}
