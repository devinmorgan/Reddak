//
//  CreateNewPostTableViewCell.swift
//  Reddak
//
//  Created by Devin Morgan on 8/25/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class CreateNewPostTableViewCell: UITableViewCell {

    let textField = UITextField.init()
    let verticalSeperator = UIView.init()
    let cameraButton = UIButton.init()
    let postButton = UIButton.init()

    init(reuseIdentifier: String) {
        
        let defaultSpacing: CGFloat = 10.0
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        
        // text field
        let placeholderText = "What's on your mind?"
        let textViewFont = UIFont.systemFontOfSize(16)
        let placeholderColor = UIColor.init(white: 184.0/255.0, alpha: 1.0)
        let textFieldTextColor = UIColor.init(white: 85.0/255.0, alpha: 1.0)
        self.textField.attributedPlaceholder = NSAttributedString.init(string: placeholderText, attributes: [NSForegroundColorAttributeName:placeholderColor])
        self.textField.textColor = textFieldTextColor
        self.textField.font = textViewFont
        self.contentView.addSubview(self.textField)
        self.textField.translatesAutoresizingMaskIntoConstraints = false
        self.textField.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: defaultSpacing).active = true
        self.textField.topAnchor.constraintEqualToAnchor(self.contentView.topAnchor).active = true
        self.textField.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -defaultSpacing).active = true
        self.textField.heightAnchor.constraintGreaterThanOrEqualToConstant(60).active = true
        
        // vertical seperator
        let seperatorColor = UIColor.init(white: 245.0/255.0, alpha: 1.0)
        self.verticalSeperator.backgroundColor = seperatorColor
        self.contentView.addSubview(self.verticalSeperator)
        self.verticalSeperator.translatesAutoresizingMaskIntoConstraints = false
        self.verticalSeperator.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: defaultSpacing).active = true
        self.verticalSeperator.topAnchor.constraintEqualToAnchor(self.textField.bottomAnchor).active = true
        self.verticalSeperator.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -defaultSpacing).active = true
        self.verticalSeperator.heightAnchor.constraintEqualToConstant(1).active = true
        
        // camera button
        let cameraIcon = UIImage.init(named: "CameraIcon")
        self.cameraButton.setImage(cameraIcon, forState: UIControlState.Normal)
        self.contentView.addSubview(self.cameraButton)
        self.cameraButton.translatesAutoresizingMaskIntoConstraints = false
        self.cameraButton.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: defaultSpacing).active = true
        self.cameraButton.topAnchor.constraintEqualToAnchor(self.verticalSeperator.bottomAnchor, constant: defaultSpacing).active = true
        self.cameraButton.widthAnchor.constraintEqualToConstant(24.0).active = true
        self.cameraButton.heightAnchor.constraintEqualToConstant(18.0).active = true
        
        // post button
        let postButtonText = "Post"
        let postButtonFont = UIFont.systemFontOfSize(18.0)
        let postButtonTextColor = UIColor.init(white: 153.0/255.0, alpha: 1.0)
        self.postButton.setTitle(postButtonText, forState: UIControlState.Normal)
        self.postButton.setTitleColor(postButtonTextColor, forState: UIControlState.Normal)
        self.postButton.titleLabel?.font = postButtonFont
        self.contentView.addSubview(self.postButton)
        self.postButton.translatesAutoresizingMaskIntoConstraints = false
        self.postButton.topAnchor.constraintEqualToAnchor(self.verticalSeperator.bottomAnchor, constant: defaultSpacing).active = true
        self.postButton.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -defaultSpacing).active = true
        self.postButton.widthAnchor.constraintEqualToConstant(38.0).active = true
        self.postButton.heightAnchor.constraintEqualToConstant(21.0).active = true
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
