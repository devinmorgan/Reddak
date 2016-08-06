//
//  LoginScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/3/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = LoginScreenView.init(frame: self.view.frame, delegate: self)
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
    
    
    func registerAccount() {
        // take care of this later (this involves web dev stuff)
        print("Register Account")
    }
    
    func signInToAccount() {
        let email: String
        let password: String
        print("Sign in to Account")
        /*
         1) send to server and process email & password
         2.a) if valid email, password sign in (segue to feed)
         2.b) if invalid email, password notify that it is the wrong email, password
            and explain why
        */
    }
    
}





