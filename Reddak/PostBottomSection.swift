//
//  PostBottomSection.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class PostBottomSection: UIView {

    let commentsButton = UIButton.init()
    let moreOptionsButton = UIButton.init()
    private let topBorder = UIView.init(frame: CGRectZero)
    private let centerPartition = UIView.init()
    
    
    init(postCommentCount: Int) {
        
        let lightGrey = UIColor.init(white: 240.0/255.0, alpha: 1.0)
        let standardPurple = UIColor.init(red: 150.0/255.0, green: 136.0/255.0, blue: 198.0/255.0, alpha: 1)
        let standardThickness: CGFloat = 1.0
        
        super.init(frame: CGRectZero )
        
        
        // comments button
        let commentsImage = UIImage.init(named: "CommentsIcon")
        self.commentsButton.setImage(commentsImage, forState: UIControlState.Normal)
        self.commentsButton.setTitle(" Comments (" + String.init(postCommentCount) + ")", forState: UIControlState.Normal)
        self.commentsButton.setTitleColor(standardPurple, forState: UIControlState.Normal)
        self.commentsButton.titleLabel!.font = UIFont.systemFontOfSize(12.0)
        self.addSubview(self.commentsButton)
        self.commentsButton.translatesAutoresizingMaskIntoConstraints = false
        self.commentsButton.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor).active = true
        self.commentsButton.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: standardThickness).active = true
        self.commentsButton.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        self.commentsButton.widthAnchor.constraintEqualToAnchor(self.widthAnchor, multiplier: 0.5).active = true
        self.commentsButton.heightAnchor.constraintEqualToConstant(35).active = true
        
        // more options button
        let moreOptionsImage = UIImage.init(named: "MoreOptionsIcon")
        self.moreOptionsButton.setImage(moreOptionsImage, forState: UIControlState.Normal)
        self.addSubview(self.moreOptionsButton)
        self.moreOptionsButton.translatesAutoresizingMaskIntoConstraints = false
        self.moreOptionsButton.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor).active = true
        self.moreOptionsButton.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: standardThickness).active = true
        self.moreOptionsButton.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        self.moreOptionsButton.widthAnchor.constraintEqualToAnchor(self.widthAnchor, multiplier: 0.5).active = true
        self.moreOptionsButton.heightAnchor.constraintEqualToConstant(35).active = true
        
        // top border
        self.topBorder.backgroundColor = lightGrey
        self.addSubview(self.topBorder)
        self.topBorder.translatesAutoresizingMaskIntoConstraints = false
        self.topBorder.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor).active = true
        self.topBorder.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor).active = true
        self.topBorder.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        self.topBorder.heightAnchor.constraintEqualToConstant(1).active = true
        
        
        // centerPartition
        self.centerPartition.backgroundColor = lightGrey
        self.addSubview(self.centerPartition)
        self.centerPartition.translatesAutoresizingMaskIntoConstraints = false
        self.centerPartition.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
        self.centerPartition.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: 5).active = true
        self.centerPartition.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor, constant: -5).active = true
        self.centerPartition.widthAnchor.constraintEqualToConstant(standardThickness).active = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
