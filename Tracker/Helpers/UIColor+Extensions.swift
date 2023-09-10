//
//  UIColor+Extensions.swift
//  Tracker
//
//  Created by Владимир Богомолов on 02.09.2023.
//

import UIKit

extension UIColor {
    static var trackerBlack: UIColor { UIColor(named: "Black") ?? UIColor.black }
    static var trackerBackground: UIColor { UIColor(named: "BackgroundColor") ?? UIColor.darkGray }
    static var trackerRed: UIColor { UIColor(named: "Red") ?? UIColor.red }
    static var trackerLightGray: UIColor { UIColor(named: "LightGray") ?? UIColor.lightGray }
    static var trackerGray: UIColor { UIColor(named: "Gray") ?? UIColor.gray }
    static var trackerWhite: UIColor { UIColor(named: "White") ?? UIColor.white }
    static var trackerBlue: UIColor {UIColor(named: "Blue") ?? UIColor.blue}
    static var trackerSearchField: UIColor {UIColor(named: "SearchFieldColor") ?? UIColor.lightGray}
}
