//
//  ViewController.swift
//  Example-ionicons
//
//  Created by Tom Sterritt on 23/02/2016.
//  Copyright © 2016 Tom Sterritt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Font example
        let button = UIButton(frame: CGRectMake(10, 20, 80, 44))
        button.titleLabel!.font = UIFont.ioniconFontOfSize(30.0)
        button.setTitle(ionicon.Wand.rawValue, forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        // Label example
        let label = UILabel.labelWithIonicon(ionicon.Wand, color: UIColor.redColor(), iconSize: 20.0)
        label.frame = CGRectMake(10, 70, label.frame.size.width, label.frame.size.height)
        self.view.addSubview(label)
        
        // Image example
        let imageView = UIImageView(frame: CGRectMake(10, 100, 50, 50))
        imageView.image = UIImage.imageWithIonicon(ionicon.Wand, color: UIColor.greenColor(), iconSize: 40.0, imageSize: CGSizeMake(50, 50))
        
        // Border to prove central
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.redColor().CGColor
        
        self.view.addSubview(imageView)
    }

}
