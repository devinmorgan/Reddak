//
//  LoginScreenView.swift
//  Reddak
//
//  Created by Devin Morgan on 8/3/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class LoginScreenView: UIView {
    
    // background colors & gradients
    
    private lazy var topRightGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width, 0)
        let radius: CGFloat = self.frame.height * 0.60
        let color1 = RGBAColor(red: 121, green: 74, blue: 162, alpha: 1)
        let color2 = RGBAColor(red:121, green: 74, blue: 162, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    private lazy var topMiddleGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width/2, 0)
        let radius: CGFloat = self.frame.height * 0.75
        let color1 = RGBAColor(red: 84, green: 90, blue: 182, alpha: 0.60)
        let color2 = RGBAColor(red: 84, green: 90, blue: 182, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    private lazy var bottomRightishGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width*9/10, self.frame.height)
        let radius: CGFloat = self.frame.height * 0.40
        let color1 = RGBAColor(red: 82, green: 62, blue: 140, alpha: 1)
        let color2 = RGBAColor(red: 82, green: 63, blue: 140, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    private lazy var bottomLeftGradient: Gradient = {
        let center: CGPoint = CGPointMake(0, self.frame.height)
        let radius: CGFloat = self.frame.height * 0.75
        let color1 = RGBAColor(red: 118, green: 72, blue: 160, alpha: 0.70)
        let color2 = RGBAColor(red: 118, green: 72, blue: 160, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    // drawRect
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        
        // add gradients to background
        CGContextDrawRadialGradient(context, bottomLeftGradient.gradient(),
                                    bottomLeftGradient.startCenter, bottomLeftGradient.startRadius,
                                    bottomLeftGradient.endCenter, bottomLeftGradient.endRadius,
                                    .DrawsBeforeStartLocation)
        CGContextDrawRadialGradient(context, bottomRightishGradient.gradient(),
                                    bottomRightishGradient.startCenter, bottomRightishGradient.startRadius,
                                    bottomRightishGradient.endCenter, bottomRightishGradient.endRadius,
                                    .DrawsBeforeStartLocation)
        CGContextDrawRadialGradient(context, topMiddleGradient.gradient(),
                                    topMiddleGradient.startCenter, topMiddleGradient.startRadius,
                                    topMiddleGradient.endCenter, topMiddleGradient.endRadius,
                                    .DrawsBeforeStartLocation)
        CGContextDrawRadialGradient(context, topRightGradient.gradient(),
                                    topRightGradient.startCenter, topRightGradient.startRadius,
                                    topRightGradient.endCenter, topRightGradient.endRadius,
                                    .DrawsBeforeStartLocation)
        
        CGContextRestoreGState(context)

    }
    
    // subviews and other view elements
    
    private lazy var iPhoneSizeScaleFactor: CGFloat = {
        return self.frame.width / 375.0
    }()
    
    private lazy var mainTitleLabel: UILabel = {
        
        // frame vars
        let width = self.frame.width
        let height: CGFloat = 50.0
        let xPos: CGFloat = 0.0
        let yPos: CGFloat = self.frame.height * 0.181
        
        // initializing the label
        let label = UILabel.init(frame: CGRectMake(xPos, yPos, width, height))
        label.text = "Reddak"
        label.font = UIFont.init(name: "HelveticaNeue-Thin", size: 60.0 * self.iPhoneSizeScaleFactor)
        label.textColor = UIColor.whiteColor()
        label.textAlignment = NSTextAlignment.Center
        
        return label
    }()
    
    private lazy var emailInputField: IconUnderbarTextField = {
        
        // frame vars
        let xPos: CGFloat = 0.0933 * self.frame.width
        let yPos: CGFloat = 0.354 * self.frame.height
        let width: CGFloat = self.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        // attributedPlaceholder vars
        let font = UIFont.init(name: "HelveticaNeue-Light", size: 18.0 * self.iPhoneSizeScaleFactor)!
        let fontColor = UIColor.init(white: 1.0, alpha: 0.80)
        let attributedPlaceholder = NSAttributedString.init(
            string: "MIT Email", attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: fontColor]
        )
        
        // initializing the inputField
        var inputField = IconUnderbarTextField.init(
            frame: CGRectMake(xPos, yPos, width, height), imageFileName: "UsernameLoginIcon",
            mainColor: RGBAColor.init(red: 255.0, green: 255.0, blue: 255.0, alpha: 0.40),
            attributedPlaceholder: attributedPlaceholder,
            imageIconFrame: CGRectMake(3.0, 9.0, 18.0, 24.0)
        )
        
        return inputField
        
    }()
    
    private lazy var passwordInputField: IconUnderbarTextField = {
        
        // frame vars
        let xPos: CGFloat = 0.0933 * self.frame.width
        let yPos: CGFloat = 0.465 * self.frame.height
        let width: CGFloat = self.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        // attributedPlaceholder vars
        let font = UIFont.init(name: "HelveticaNeue-Light", size: 18.0 * self.iPhoneSizeScaleFactor)!
        let fontColor = UIColor.init(white: 1.0, alpha: 0.80)
        let attributedPlaceholder = NSAttributedString.init(
            string: "Password", attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: fontColor]
        )
        
        // initializing the inputField
        var inputField = IconUnderbarTextField.init(
            frame: CGRectMake(xPos, yPos, width, height), imageFileName: "PasswordLoginIcon",
            mainColor: RGBAColor.init(red: 255.0, green: 255.0, blue: 255.0, alpha: 0.40),
            attributedPlaceholder: attributedPlaceholder,
            imageIconFrame: CGRectMake(0.0, 7.0, 24.0, 28.0)
        )
        
        return inputField
        
    }()
    
    private lazy var loginButton: UIButton = {
        
        // frame vars
        let xPos: CGFloat = 0.0933 * self.frame.width
        let yPos: CGFloat = 0.605 * self.frame.height
        let width: CGFloat = self.frame.width - (2 * xPos)
        let height: CGFloat = 50.0
        
        // attributedText vars
        let string = "Log In"
        let font = UIFont.init( name: "HelveticaNeue-Medium", size: 20.0 * self.iPhoneSizeScaleFactor)!
        let textColor = UIColor.whiteColor()
        let attributedText = NSAttributedString.init(string: string, attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: textColor])
        
        // initializing the button
        let button = UIButton.init(frame: CGRectMake(xPos, yPos, width, height))
        button.setAttributedTitle(attributedText, forState: UIControlState.Normal)
        button.backgroundColor = UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 168.0/255.0, alpha: 1.0)
        button.layer.cornerRadius = 5.0
        
        return button
        
    }()
    
    private lazy var signupInsteadLink: UILabel = {
        
        // frame vars
        let xPos: CGFloat = 0
        let yPos: CGFloat = 0.705 * self.frame.height
        let width: CGFloat = self.frame.width
        let height: CGFloat = 18.0
        
        // attributedText vars
        let string = "New to Reddak? Sign Up"
        let font = UIFont.init(name: "HelveticaNeue-Light", size: 16.0 * self.iPhoneSizeScaleFactor)!
        let questionColor = UIColor.init(white: 1.0, alpha: 0.40)
        let linkColor = UIColor.init(white: 1.0, alpha: 1.0)
        let attributedText = NSMutableAttributedString.init(string: string, attributes: [NSFontAttributeName: font, NSForegroundColorAttributeName: questionColor])
        attributedText.addAttributes(
            [NSUnderlineStyleAttributeName: NSNumber.init(long: 1), NSUnderlineColorAttributeName: linkColor, NSForegroundColorAttributeName: linkColor],
            range: NSRange.init(location: 15, length: 7))
        
        // initializing the label
        let label = UILabel.init(frame: CGRectMake(xPos, yPos, width, height))
        label.textAlignment = NSTextAlignment.Center
        label.attributedText = attributedText
        label.userInteractionEnabled = true
        
        return label
        
    }()
    
    // override init method
    
    private var delegate: UIViewController
    
    init(frame: CGRect, delegate: UIViewController) {
        self.delegate = delegate
        super.init(frame: frame)
        self.addSubview(self.mainTitleLabel)
        self.addSubview(self.emailInputField)
        self.addSubview(self.passwordInputField)
        self.addSubview(self.loginButton)
        self.addSubview(self.signupInsteadLink)
        self.backgroundColor = UIColor.init(red: 59.0/255, green: 47.0/255, blue: 99.0/255, alpha: 1.0)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // public API
    
    func getEmailText() -> String? {
        return self.emailInputField.getEnteredText()
    }
    
    func getPasswordText() -> String? {
        return self.passwordInputField.getEnteredText()
    }

    func setCallbackForLoginButton(selector: Selector) {
        self.loginButton.addTarget(self.delegate, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func setCallbackForSignUpLink(selector: Selector) {
        print("got this far")
        let tapGesture = UITapGestureRecognizer.init(target: self.delegate, action: selector)
        self.signupInsteadLink.addGestureRecognizer(tapGesture)
    }
    
}
