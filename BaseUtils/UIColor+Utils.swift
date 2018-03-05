//
//  UIColor+Utils.swift
//  ITCalculator
//
//  Created by Harikrishna Pai on 17/01/18.
//  Copyright © 2018 BlahBlahBlah. All rights reserved.
//

import UIKit

extension UIColor {
    
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
    func hex() -> UInt {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        var colorAsUInt: UInt = 0
        if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            colorAsUInt = UInt(red * 255.0) << 16
            colorAsUInt += UInt(green * 255.0) << 8
            colorAsUInt += UInt(blue * 255.0)
        }
        return colorAsUInt
    }
    
    class func from(rgb hexValue: UInt) -> UIColor {
        return UIColor(red: CGFloat((hexValue & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((hexValue & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat((hexValue & 0x0000FF) >> 0) / 255.0, alpha: 1.0)
    }
    
    class func navigationBarColor() -> UIColor {
        return UIColor(red: 0.14, green: 0.16, blue: 0.22, alpha: 1)
    }
}
