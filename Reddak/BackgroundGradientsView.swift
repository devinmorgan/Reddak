//
//  BackgroundGradientsView.swift
//  Reddak
//
//  Created by Devin Morgan on 8/7/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class BackgroundGradientsView: UIView {

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

}
