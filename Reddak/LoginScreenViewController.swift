//
//  LoginScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/3/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    // vars and lets
    
    var model = LoginAndRegistrationModel()
    lazy var mainView: LoginScreenView! = { return self.view as! LoginScreenView }()
    
    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = LoginScreenView.init(frame: self.view.frame, delegate: self)
        self.mainView.setCallbackForLoginButton(#selector(atteptToLoginUser))
        self.mainView.setCallbackForSignUpLink(#selector(tappedOnSignUpQuestionOrLink))
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
    
    // main functions
    
    func tappedOnSignUpQuestionOrLink() {
        //TODO Segue to the Register View
        print("Impliment me!")
    }
    
    func atteptToLoginUser() {
        let email: String = self.mainView.getEmailText()!
        let password: String = self.mainView.getPasswordText()!
        
        let actionToTake = self.model.loginUserWith(email: email, password: password)
//        switch actionToTake {
//        case "Email was not a valid email.":
//            break
//        case "Email not an MIT email.":
//            break
//        case "Registered MIT eamil but wrong password":
//            break
//        case "Correct MIT email & password":
//            break
//        default:
//            break
//        }
    }
    
}





