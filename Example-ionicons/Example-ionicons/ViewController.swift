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
        let button = UIButton(frame: CGRect(x: 10, y: 20, width: 80, height: 44))
        button.titleLabel!.font = UIFont.ioniconFontOfSize(30.0)
        button.setTitle(ionicon.Wand.rawValue, for: UIControlState())
        button.setTitleColor(UIColor.blue, for: UIControlState())
        self.view.addSubview(button)
        
        // Label example
        let label = UILabel.labelWithIonicon(ionicon.Wand, color: UIColor.red, iconSize: 20.0)
        label.frame = CGRect(x: 10, y: 70, width: label.frame.size.width, height: label.frame.size.height)
        self.view.addSubview(label)
        
        // Image example
        let imageView = UIImageView(frame: CGRect(x: 10, y: 100, width: 50, height: 50))
        imageView.image = UIImage.imageWithIonicon(ionicon.Wand, color: UIColor.green, iconSize: 40.0, imageSize: CGSize(width: 50, height: 50))
        
        // Border to prove central
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.red.cgColor
        
        self.view.addSubview(imageView)
    }

}
