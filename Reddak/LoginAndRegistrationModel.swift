//
//  RegistrationAndLogin.swift
//  Reddak
//
//  Created by Devin Morgan on 8/6/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import Foundation

class LoginAndRegistrationModel {
    
    enum TryingToLoginOutcomes {
        case NotValidEmail
        case NotAnMITEmail
        case RegisteredEmailWrongPassword
        case Success
    }

    func loginUserWith(email username: String, password: String) -> TryingToLoginOutcomes {
        //TODO: finish this method
        
        return .Success
    }
    
    enum TryingToRegisterAccountOutcomes {
        case NotValidEmail
        case NotAnMITEmail
        case AlreadyRegisteredEmail
        case PasswordsDoNotMatch
        case Success
    }
    
    func registerUserWith(email username: String, password: String) -> TryingToRegisterAccountOutcomes {
        //TODO: finish this method
        
        return .Success
    }
    
}
