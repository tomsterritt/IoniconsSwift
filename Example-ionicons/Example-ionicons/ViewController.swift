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
        let label = UILabel(frame: CGRectMake(10, 20, self.view.frame.size.width, 24))
        label.font = UIFont.ioniconFontOfSize(20.0)
        label.text = ionicon.Wand.rawValue
        label.sizeToFit()
        self.view.addSubview(label)
        
        // Image example
        let imageView = UIImageView(frame: CGRectMake(10, 50, 50, 50))
        imageView.image = UIImage.imageWithIonicon(ionicon.Wand, color: UIColor.greenColor(), iconSize: 40.0, imageSize: CGSizeMake(50, 50))
        self.view.addSubview(imageView)
    }

}
