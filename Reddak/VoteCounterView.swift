//
//  VoteCounterView.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class VoteCounterView: UIView {

    var upvoteButton: UIButton = {
        // view data
        let xPos:CGFloat = 0
        let yPos:CGFloat = 0
        let width:CGFloat = 25
        let height:CGFloat = 25
        let buttonImage = UIImage.init(named: "UpvoteIcon")
        
        // init with data
        let button = UIButton.init(frame: CGRectMake(xPos, yPos, width, height))
        button.setImage(buttonImage, forState: UIControlState.Normal)
        
        return button
    }()
    
    var voteCountLabel: UILabel = {
        // view data
        let xPos:CGFloat = 0
        let yPos:CGFloat = 25
        let width:CGFloat = 25
        let height:CGFloat = 15
        let textColor = UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 167.0/255.0, alpha: 1)
        let font = UIFont.systemFontOfSize(12.0)
        let tempText = "00"
        
        // init with data
        let label = UILabel.init(frame: CGRectMake(xPos, yPos, width, height))
        label.textColor = textColor
        label.font = font
        label.text = tempText
        
        return label
    }()
    
    var downvoteButton: UIButton = {
        // view data
        let xPos:CGFloat = 0
        let yPos:CGFloat = 40
        let width:CGFloat = 25
        let height:CGFloat = 25
        let buttonImage = UIImage.init(named: "DownvoteIcon")
        
        // init with data
        let button = UIButton.init(frame: CGRectMake(xPos, yPos, width, height))
        button.setImage(buttonImage, forState: UIControlState.Normal)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(upvoteButton)
        self.addSubview(voteCountLabel)
        self.addSubview(downvoteButton)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
