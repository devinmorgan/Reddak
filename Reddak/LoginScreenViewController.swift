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
        self.performSegueWithIdentifier("LoginRegisterSegue", sender: nil)
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
            break
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationVC = segue.destinationViewController
        if let registerVC = destinationVC as? RegistrationScreenView {
            print("going to registration")
        }
        else if let loginVC = destinationVC as? LoginScreenViewController {
            print("going to login")
        }
    }
    
    
    
}





