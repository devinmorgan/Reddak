//
//  RegistrationScreenViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/7/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class RegistrationScreenViewController: UIViewController, UIScrollViewDelegate {

    // vars and lets
    
    @IBOutlet weak var formScrollView: UIScrollView!
    
    
    // housekeeping
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.formScrollView.delegate = self
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
    }
    
    

}
