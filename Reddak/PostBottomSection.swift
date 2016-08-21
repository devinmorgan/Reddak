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
    private let topBorder = UIView.init()
    private let centerPartition = UIView.init()
    
    
    init(postCommentCount: Int) {
        
        let lightGrey = UIColor.init(white: 240.0/255.0, alpha: 1.0)
        let standardPurple = UIColor.init(red: 150.0/255.0, green: 136.0/255.0, blue: 198.0/255.0, alpha: 1)
        let standardThickness: CGFloat = 1.0
        
        super.init(frame: CGRectZero)
        
        // top border
        self.topBorder.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor).active = true
        self.topBorder.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor).active = true
        self.topBorder.topAnchor.constraintEqualToAnchor(self.topAnchor).active = true
        self.topBorder.widthAnchor.constraintEqualToConstant(standardThickness)
        self.topBorder.backgroundColor = lightGrey
        
        // centerPartition
        self.centerPartition.centerXAnchor.constraintEqualToAnchor(self.centerXAnchor).active = true
        self.centerPartition.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: 10).active = true
        self.centerPartition.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor, constant: 10).active = true
        self.centerPartition.widthAnchor.constraintEqualToConstant(standardThickness)
        self.centerPartition.backgroundColor = lightGrey
        
        // comments button
        self.commentsButton.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor).active = true
        self.commentsButton.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: standardThickness).active = true
        self.commentsButton.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        self.commentsButton.widthAnchor.constraintEqualToAnchor(self.widthAnchor, multiplier: 0.5).active = true
        let commentsImage = UIImage.init(named: "CommentsIcon")
        self.commentsButton.titleLabel?.textColor = standardPurple
        self.commentsButton.setImage(commentsImage, forState: UIControlState.Normal)
        self.commentsButton.titleLabel?.text = String.init(postCommentCount)
        
        // more options button
        self.moreOptionsButton.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor).active = true
        self.moreOptionsButton.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: standardThickness).active = true
        self.moreOptionsButton.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor).active = true
        self.moreOptionsButton.widthAnchor.constraintEqualToAnchor(self.widthAnchor, multiplier: 0.5).active = true
        let moreOptionsImage = UIImage.init(named: "MoreOptionsIcon")
        self.moreOptionsButton.setImage(moreOptionsImage, forState: UIControlState.Normal)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
