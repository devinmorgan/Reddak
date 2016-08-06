//
//  IconUnderbarTextField.swift
//  Reddak
//
//  Created by Devin Morgan on 8/4/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class IconUnderbarTextField: UIView {
    
    var iconFileName: String
    var mainColor: RGBAColor
    var attributedPlaceholder: NSAttributedString
    var imageIconFrame: CGRect
    
    lazy var textField: UITextField = {
        let width: CGFloat = (self.frame.width * 0.816) - 35.0
        let height: CGFloat = self.frame.height - 1.0
        let xPos: CGFloat = 35.0
        let yPos: CGFloat = 0.0
        
        let textField: UITextField = UITextField.init(frame: CGRectMake(xPos, yPos, width, height))
        textField.attributedPlaceholder = self.attributedPlaceholder
        textField.textColor = UIColor.init(
            red: self.mainColor.red, green: self.mainColor.green, blue: self.mainColor.blue, alpha: 1.0)

        return textField
    }()
    
    lazy private var iconImageView: UIImageView = {
        
        let imageView = UIImageView.init(frame: self.imageIconFrame)
        imageView.image = UIImage.init(named: self.iconFileName)
        imageView.alpha = self.mainColor.alpha

        return imageView
        
    }()
    
    lazy private var underbar: UIView = {
        let width: CGFloat = self.frame.width
        let height: CGFloat = 1.0
        let xPos: CGFloat = 0.0
        let yPos: CGFloat = self.frame.height - 1.0
        
        let view = UIView.init(frame: CGRectMake(xPos, yPos, width, height))
        view.backgroundColor = UIColor.init(
            red: self.mainColor.red, green: self.mainColor.green,
            blue: self.mainColor.blue, alpha: self.mainColor.alpha
        )
        
        return view
        
    }()
    
    init(frame: CGRect, imageFileName: String, mainColor: RGBAColor, attributedPlaceholder: NSAttributedString, imageIconFrame: CGRect) {
        self.iconFileName = imageFileName
        self.mainColor = mainColor
        self.attributedPlaceholder = attributedPlaceholder
        self.imageIconFrame = imageIconFrame
        
        super.init(frame: frame)
        
        self.addSubview(self.iconImageView)
        self.addSubview(self.textField)
        self.addSubview(self.underbar)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
