//
//  ViewsHelperCode.swift
//  Reddak
//
//  Created by Devin Morgan on 8/6/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

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
