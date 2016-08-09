//
//  RegistrationScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/7/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class RegistrationScreenViewController: UIViewController {

    // vars and lets
    
    var model = LoginAndRegistrationModel()
//    lazy var mainView: RegistrationScreenView! = { return self.view as! RegistrationScreenView }()
    
    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.view = RegistrationScreenView.init(frame: self.view.frame, delegate: self)
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }

}
