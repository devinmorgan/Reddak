//
//  LoginScreenView.swift
//  Reddak
//
//  Created by Devin Morgan on 8/3/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class LoginScreenView: UIView {
    
    struct RGBAColor {
        let red, green, blue, alpha: CGFloat
        
        init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
            self.red = red/255.0
            self.green = green/255.0
            self.blue = blue/255.0
            self.alpha = alpha
        }
    }
    
    struct Gradient {
        private let colorSpace: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()!
        private let colorComponents: [CGFloat]
        private let locations: [CGFloat] = [0,1]
        
        let startCenter, endCenter: CGPoint
        let startRadius, endRadius: CGFloat
        
        init(startCenter: CGPoint, endCenter: CGPoint, startRadius: CGFloat,
            endRadius: CGFloat, firstColor: RGBAColor, secondColor: RGBAColor) {
            self.startCenter = startCenter
            self.endCenter = endCenter
            self.startRadius = startRadius
            self.endRadius = endRadius
            self.colorComponents = [
                firstColor.red, firstColor.green, firstColor.blue, firstColor.alpha,
                secondColor.red, secondColor.green, secondColor.blue, secondColor.alpha
            ]
        }
        
        init(center startCenter: CGPoint, radius endRadius: CGFloat,
             firstColor: RGBAColor, secondColor: RGBAColor) {
            self.init(startCenter: startCenter, endCenter: startCenter,
                      startRadius: 0, endRadius: endRadius, firstColor: firstColor,
                      secondColor: secondColor)
        }
        
        func gradient() -> CGGradientRef {
            return CGGradientCreateWithColorComponents(colorSpace, colorComponents, locations, 2)!
        }
    }
    
    lazy var topRightGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width, 0)
        let radius: CGFloat = self.frame.height * 0.60
        let color1 = RGBAColor(red: 121, green: 74, blue: 162, alpha: 1)
        let color2 = RGBAColor(red:121, green: 74, blue: 162, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    lazy var topMiddleGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width/2, 0)
        let radius: CGFloat = self.frame.height * 0.75
        let color1 = RGBAColor(red: 84, green: 90, blue: 182, alpha: 0.60)
        let color2 = RGBAColor(red: 84, green: 90, blue: 182, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    lazy var bottomRightishGradient: Gradient = {
        let center: CGPoint = CGPointMake(self.frame.width*9/10, self.frame.height)
        let radius: CGFloat = self.frame.height * 0.40
        let color1 = RGBAColor(red: 82, green: 62, blue: 140, alpha: 1)
        let color2 = RGBAColor(red: 82, green: 63, blue: 140, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    lazy var bottomLeftGradient: Gradient = {
        let center: CGPoint = CGPointMake(0, self.frame.height)
        let radius: CGFloat = self.frame.height * 0.75
        let color1 = RGBAColor(red: 118, green: 72, blue: 160, alpha: 0.70)
        let color2 = RGBAColor(red: 118, green: 72, blue: 160, alpha: 0)
        
        return Gradient(center: center, radius: radius, firstColor: color1, secondColor: color2)
        
    }()
    
    
//    var bottomLeftGradient = CAGradientLayer()
//    var solidBackground = UIColor()
    
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        
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
