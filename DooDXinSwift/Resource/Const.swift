//
//  Const.swift
//  DooDXinSwift
//
//  Created by sishengxiu on 2018/3/29.
//  Copyright © 2018年 ssx. All rights reserved.
//

import UIKit
let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height
let isIPhoneX: Bool = screenHeight == 812 ? true : false


//RGB 16进制颜色转换
func mHexColor(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}
//RGB 颜色
func sRgbColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) -> UIColor {
    return UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
}

