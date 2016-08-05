//
//  ColoredRoundedButton.swift
//  Reddak
//
//  Created by Devin Morgan on 8/4/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class ColoredRoundedButton: UIButton {

    init(frame: CGRect, cornerRadius: CGFloat, backgroundColor: UIColor, attributedTitle: NSAttributedString) {
        super.init(frame: frame)
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.titleLabel?.attributedText = attributedTitle
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
