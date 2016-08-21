//
//  TextPostTableViewCell.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class TextPostTableViewCell: UITableViewCell {

    private var postTimestamp = UILabel.init()
    private var postText = UITextView.init()
    private var postCountVoter: VoteCounterView
    private var postBottom: PostBottomSection
    
    init(reuseIdentifier: String, timestampText: String) {
        
        let leftMargin: CGFloat = 10.0
        let topMargin: CGFloat = 10.0
        let rightMargin: CGFloat = 10.0
        let defaultSpaceing: CGFloat = 10.0
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        
        // post timestamp
        self.postTimestamp.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor, constant: leftMargin).active = true
        self.postTimestamp.topAnchor.constraintEqualToAnchor(self.topAnchor, constant: topMargin).active = true
        self.postTimestamp.trailingAnchor.constraintEqualToAnchor(self.postCountVoter.leadingAnchor, constant: rightMargin).active = true
        self.postTimestamp.heightAnchor.constraintEqualToConstant(15).active = true
        let lightPurple = UIColor.init(red: 195.0/255.0, green: 186.0/255.0, blue: 226.0/255.0, alpha: 1.0)
        self.postTimestamp.textColor = lightPurple
        self.postTimestamp.text = timestampText
        
        // post text
        self.postText.leadingAnchor.constraintEqualToAnchor(self.leadingAnchor, constant: leftMargin).active = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
