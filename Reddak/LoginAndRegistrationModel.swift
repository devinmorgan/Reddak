//
//  RegistrationAndLogin.swift
//  Reddak
//
//  Created by Devin Morgan on 8/6/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import Foundation

class LoginAndRegistrationModel {

    func attemptToRegisterUser(username: String, password: String) {
        print("Register Account")
        // take care of this later (this involves web dev stuff)
    }

    func attemptToSignInUser(username: String, password: String) {
        print("Sign in to Account")
        /*
         1) send to server and process email & password
         2.a) if valid email, password sign in (segue to feed)
         2.b) if invalid email, password notify that it is the wrong email, password
         and explain why
         */
    }
}
