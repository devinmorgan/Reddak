//
//  TextPostTableViewCell.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class TextPostTableViewCell: UITableViewCell {

    private var voteCounter: VoteCounterView?
    private var timestampLabel = UILabel.init()
    private var textView = UITextView.init()
    private var bottomSection: PostBottomSection?
    
    init(reuseIdentifier: String, timestampText: String, postText: String, voteCount: Int) {
        
        let leftMargin: CGFloat = 10.0
        let topMargin: CGFloat = 10.0
        let rightMargin: CGFloat = 10.0
        let defaultSpaceing: CGFloat = 10.0
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        self.heightAnchor.constraintGreaterThanOrEqualToConstant(120)
        
        // vote counter
        self.voteCounter = VoteCounterView.init(voteCount: voteCount)
        self.voteCounter!.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor, constant: rightMargin).active = true
        self.voteCounter!.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: topMargin).active = true
        self.voteCounter!.widthAnchor.constraintEqualToConstant(25).active = true
        self.voteCounter!.heightAnchor.constraintEqualToConstant(65).active = true
        
        // timestamp
        self.timestampLabel.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor, constant: leftMargin).active = true
        self.timestampLabel.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: topMargin).active = true
        self.timestampLabel.trailingAnchor.constraintEqualToAnchor(self.voteCounter!.leadingAnchor, constant: rightMargin).active = true
        self.timestampLabel.heightAnchor.constraintEqualToConstant(15).active = true
        let lightPurple = UIColor.init(red: 195.0/255.0, green: 186.0/255.0, blue: 226.0/255.0, alpha: 1.0)
        let timestampFont = UIFont.systemFontOfSize(12.0)
        self.timestampLabel.textColor = lightPurple
        self.timestampLabel.font = timestampFont
        self.timestampLabel.text = timestampText
        
        // textview
        self.textView.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor, constant: leftMargin).active = true
        self.textView.topAnchor.constraintEqualToAnchor(self.timestampLabel.trailingAnchor, constant: defaultSpaceing).active = true
        self.textView.trailingAnchor.constraintEqualToAnchor(self.voteCounter!.leadingAnchor, constant: defaultSpaceing).active = true
        let postTextColor = UIColor.init(white: 85.0/255.0, alpha: 1.0)
        let postTextFont = UIFont.systemFontOfSize(14.0)
        self.textView.textColor = postTextColor
        self.textView.font = postTextFont
        self.textView.text = postText
        
        // bottom section
        self.bottomSection = PostBottomSection.init(postCommentCount: 12)
        self.bottomSection!.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor, constant: leftMargin).active = true
        self.bottomSection!.trailingAnchor.constraintEqualToAnchor(self.trailingAnchor, constant: rightMargin).active = true
        self.bottomSection!.bottomAnchor.constraintEqualToAnchor(self.bottomAnchor, constant: 0).active = true
        self.bottomSection!.topAnchor.constraintEqualToAnchor(self.textView.bottomAnchor, constant: defaultSpaceing).active = true
        self.bottomSection!.heightAnchor.constraintEqualToConstant(36.0)

        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
