//
//  RegistrationAndLogin.swift
//  Reddak
//
//  Created by Devin Morgan on 8/6/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import Foundation

class LoginAndRegistrationModel {

    enum TryingToRegisterAccountOutcomes {
        case NotValidEmail
        case NotAnMITEmail
        case AlreadyRegisteredEmail
        case UnregisteredEmail
    }
    
    func registerUserWith(email username: String, password: String) -> TryingToRegisterAccountOutcomes {
        //TODO: finish this method
        print("Register Account")
        
        return .NotValidEmail
    }
    
    enum TryingToLoginOutcomes {
        case NotValidEmail
        case NotAnMITEmail
        case RegisteredEmailWrongPassword
        case RegisteredEmailAndPassword
    }

    func loginUserWith(email username: String, password: String) -> TryingToLoginOutcomes {
        //TODO: finish this method
        print("Sign in to Account")
        
        return .RegisteredEmailAndPassword
    }
}
