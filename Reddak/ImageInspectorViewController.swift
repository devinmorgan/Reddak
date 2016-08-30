//
//  ImageInspectorViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/25/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class ImageInspectorViewController: UIViewController {
    
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var mainImageView: UIImageView!
    var mainImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (self.mainImage != nil) {
            self.mainImageView.image = self.mainImage
        }
        
        // add tap gesture to imageView
        let imageViewTapGesture = UITapGestureRecognizer.init(target: self, action: #selector(toggleExitButtonVisibility))
        self.view.addGestureRecognizer(imageViewTapGesture)
    }
    
    // MARK: - Private Functions
    
    func toggleExitButtonVisibility() -> Void {
        self.exitButton.hidden = !self.exitButton.hidden
    }
    
    // MARK: - Public Functions
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
