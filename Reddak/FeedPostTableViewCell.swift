//
//  TextPostTableViewCell.swift
//  Reddak
//
//  Created by Devin Morgan on 8/20/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class FeedPostTableViewCell: UITableViewCell {

    private var voteCounter: VoteCounterView?
    private var timestampLabel = UILabel.init()
    private var textView = UITextView.init()
    private var bottomSection: PostBottomSection?
    private var postImageView: UIImageView?
    private var delegate: TopicFeedTableViewController
    
    private let spaceing: CGFloat = 10.0
    
    init(delegate: TopicFeedTableViewController, reuseIdentifier: String, timestampText: String, postText: String, voteCount: Int, imageName: String?) {
        self.delegate = delegate
        
        super.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        
        // vote counter
        self.voteCounter = VoteCounterView.init(voteCount: voteCount)
        self.contentView.addSubview(self.voteCounter!)
        self.voteCounter!.translatesAutoresizingMaskIntoConstraints = false
        self.voteCounter!.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -spaceing).active = true
        self.voteCounter!.topAnchor.constraintEqualToAnchor(self.contentView.topAnchor, constant: spaceing).active = true
        self.voteCounter!.widthAnchor.constraintEqualToConstant(25).active = true
        self.voteCounter!.heightAnchor.constraintEqualToConstant(65).active = true
        
        // timestamp
        let lightPurple = UIColor.init(red: 195.0/255.0, green: 186.0/255.0, blue: 226.0/255.0, alpha: 1.0)
        let timestampFont = UIFont.systemFontOfSize(12.0)
        self.timestampLabel.textColor = lightPurple
        self.timestampLabel.font = timestampFont
        self.timestampLabel.text = timestampText
        self.contentView.addSubview(self.timestampLabel)
        self.timestampLabel.translatesAutoresizingMaskIntoConstraints = false
        self.timestampLabel.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: spaceing).active = true
        self.timestampLabel.topAnchor.constraintEqualToAnchor(self.contentView.topAnchor, constant: spaceing).active = true
        self.timestampLabel.trailingAnchor.constraintEqualToAnchor(self.voteCounter!.leadingAnchor, constant: -spaceing).active = true
        self.timestampLabel.heightAnchor.constraintEqualToConstant(15).active = true

        // textview
        let postTextColor = UIColor.init(white: 85.0/255.0, alpha: 1.0)
        let postTextFont = UIFont.systemFontOfSize(14.0)
        self.textView.textColor = postTextColor
        self.textView.font = postTextFont
        self.textView.text = postText
        self.textView.textContainer.lineFragmentPadding = 0
        self.textView.editable = false
        self.contentView.addSubview(self.textView)
        self.textView.translatesAutoresizingMaskIntoConstraints = false
        self.textView.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: spaceing).active = true
        self.textView.topAnchor.constraintEqualToAnchor(self.timestampLabel.bottomAnchor, constant: spaceing).active = true
        self.textView.trailingAnchor.constraintEqualToAnchor(self.voteCounter!.leadingAnchor, constant: -spaceing).active = true
        let textViewHeight = postText.sizeWithAttributes([NSFontAttributeName:postTextFont]).height
        self.textView.heightAnchor.constraintEqualToConstant(textViewHeight*2).active = true
        
        // bottom section
        self.bottomSection = PostBottomSection.init(postCommentCount: 12)
        self.contentView.addSubview(self.bottomSection!)
        self.bottomSection!.translatesAutoresizingMaskIntoConstraints = false
        self.bottomSection!.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: spaceing).active = true
        self.bottomSection!.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -spaceing).active = true
        self.bottomSection!.heightAnchor.constraintEqualToConstant(36.0).active = true
        self.bottomSection!.bottomAnchor.constraintEqualToAnchor(self.contentView.bottomAnchor).active = true
        
        // post image
        if imageName != nil {
            let image = UIImage.init(named: imageName!)
            self.postImageView = UIImageView.init(image: image)
            self.postImageView!.userInteractionEnabled = true
            self.contentView.addSubview(self.postImageView!)
            self.postImageView!.translatesAutoresizingMaskIntoConstraints = false
            self.postImageView!.leadingAnchor.constraintEqualToAnchor(self.contentView.leadingAnchor, constant: spaceing).active = true
            self.postImageView!.topAnchor.constraintEqualToAnchor(self.textView.bottomAnchor, constant: spaceing).active = true
            self.postImageView!.trailingAnchor.constraintEqualToAnchor(self.contentView.trailingAnchor, constant: -spaceing).active = true
            
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK - Public API
    
    func addGestureToImage(gesture: UIGestureRecognizer) {
        self.postImageView!.addGestureRecognizer(gesture)
    }
    
    func getPostImageFromCell() -> UIImage? {
        return self.postImageView?.image
    }
    

}
