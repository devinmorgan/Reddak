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
    }
    
    func atteptToLoginUser() {
        let email: String = self.mainView.getEmailText()!
        let password: String = self.mainView.getPasswordText()!
        
        let actionToTake = self.model.loginUserWith(email: email, password: password)
        switch actionToTake {
        case .NotValidEmail:
            break
        case .NotAnMITEmail:
            break
        case .RegisteredEmailWrongPassword:
            break
        case .Success:
            self.segueToRegistrationPage()
        }
        
    }
    
    func segueToRegistrationPage() {
        print("Segue to registration page")
    }
    
}





