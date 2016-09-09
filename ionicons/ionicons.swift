//
//  ionicons.swift
//
//  Created by Tom Sterritt on 24/02/2016.
//  Copyright © 2016 Tom Sterritt. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore
import CoreText

class ionicons {
    static let fontName = "ionicons"
}

public extension UIFont {
    static func ioniconFontOfSize(_ size: CGFloat) -> UIFont {
        var font = UIFont(name: ionicons.fontName, size: size)
        
        if (font == nil) {
            if let bundle = Bundle(url: Bundle(for: ionicons.self).url(forResource: ionicons.fontName, withExtension: "bundle")!) {
                let fontUrl = bundle.url(forResource: ionicons.fontName, withExtension: "ttf")
                
                let provider = CGDataProvider(url: fontUrl as! CFURL)
                let newFont = CGFont(provider!)
                
                var error: Unmanaged<CFError>?
                    
                if (!CTFontManagerRegisterGraphicsFont(newFont, &error)) {
                    NSLog("Ionicons: Failed to load font: ", error.debugDescription)
                }
                    
                font = UIFont(name: ionicons.fontName, size: size)
            } else {
                assertionFailure("Ionicons: Could not load bundle")
            }
        }
        
        return font!
    }
}

public extension UILabel {
    static func labelWithIonicon(_ icon: ionicon, color: UIColor, iconSize: CGFloat) -> UILabel {
        let label = UILabel()
        
        label.font = UIFont.ioniconFontOfSize(iconSize)
        label.text = icon.rawValue
        label.textColor = color
        
        label.sizeToFit()
        
        label.accessibilityElementsHidden = true
        
        return label
    }
}

public extension UIImage {
    static func imageWithIonicon(_ icon: ionicon, color: UIColor, iconSize: CGFloat, imageSize: CGSize) -> UIImage {
        let style = NSMutableParagraphStyle()
        style.alignment = .left
        style.baseWritingDirection = .leftToRight
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0);
        
        let attString = NSAttributedString(string: icon.rawValue, attributes: [
            NSFontAttributeName: UIFont.ioniconFontOfSize(iconSize),
            NSForegroundColorAttributeName: color,
            NSParagraphStyleAttributeName: style
            ])
        
        let ctx = NSStringDrawingContext()
        
        let boundingRect = attString.boundingRect(with: CGSize(width: iconSize, height: iconSize), options: .usesDeviceMetrics, context: ctx)
        
        attString.draw(in: CGRect(x: (imageSize.width / 2) - (boundingRect.size.width / 2), y: (imageSize.height / 2) - (iconSize / 2), width: imageSize.width, height: imageSize.height))
        
        var image = UIGraphicsGetImageFromCurrentImageContext()
        
        image = image?.withRenderingMode(.alwaysOriginal)
        
        return image!
    }
}
