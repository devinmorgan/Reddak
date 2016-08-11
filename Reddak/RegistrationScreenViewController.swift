//
//  RegistrationScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/7/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class RegistrationScreenViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {

    // vars and lets
    
    @IBAction func testFunctionForTestButton() {
        print("this is another test")
    }
    @IBOutlet weak var formScrollView: UIScrollView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var repeatPasswordField: UITextField!
    
    
    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.formScrollView.delegate = self
        self.emailField.delegate = self
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
    
    @IBAction func testFunction() {
        print("hello world")
    }
    

}
