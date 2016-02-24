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
    static func ioniconFontOfSize(size: CGFloat) -> UIFont {
        var font = UIFont(name: ionicons.fontName, size: size)
        
        if (font == nil) {
            if let bundle = NSBundle(URL: NSBundle(forClass: ionicons.self).URLForResource(ionicons.fontName, withExtension: "bundle")!) {
                if let fontData = NSData(contentsOfURL: bundle.URLForResource(ionicons.fontName, withExtension: "ttf")!) {
                    var error: Unmanaged<CFErrorRef>?
                    
                    let provider = CGDataProviderCreateWithCFData(fontData)
                    let newFont = CGFontCreateWithDataProvider(provider)
                    
                    if (!CTFontManagerRegisterGraphicsFont(newFont!, &error)) {
                        NSLog("Ionicons: Failed to load font: ", error.debugDescription)
                    }
                    
                    font = UIFont(name: ionicons.fontName, size: size)
                }
            } else {
                assertionFailure("Ionicons: Could not load bundle")
            }
        }
        
        return font!
    }
}

public extension UIImage {
    static func imageWithIonicon(icon: ionicon, color: UIColor, iconSize: CGFloat, imageSize: CGSize) -> UIImage {
        let style = NSMutableParagraphStyle()
        style.alignment = .Left
        style.baseWritingDirection = .LeftToRight
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0.0);
        
        let attString = NSAttributedString(string: icon.rawValue, attributes: [
            NSFontAttributeName: UIFont.ioniconFontOfSize(iconSize),
            NSForegroundColorAttributeName: color,
            NSParagraphStyleAttributeName: style
            ])
        
        let ctx = NSStringDrawingContext()
        
        let boundingRect = attString.boundingRectWithSize(CGSize(width: iconSize, height: iconSize), options: .UsesDeviceMetrics, context: ctx)
        
        attString.drawInRect(CGRect(x: (imageSize.width / 2) - boundingRect.size.width / 2, y: (imageSize.height / 2) - boundingRect.size.height / 2, width: imageSize.width, height: imageSize.height))
        
        var image = UIGraphicsGetImageFromCurrentImageContext()
        
        if (image.respondsToSelector("imageWithRenderingMode")) {
            image = image.imageWithRenderingMode(.AlwaysOriginal)
        }
        
        return image
    }
}
