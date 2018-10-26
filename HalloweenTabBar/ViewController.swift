//
//  ViewController.swift
//  HalloweenTabBar
//
//  Created by Alex Nagy on 26/10/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    
    var image: UIImage?
    
    lazy var imageView: UIImageView = {
        var iv = UIImageView()
        if let image = image {
            iv.image = image
        }
        return iv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.2862745098, blue: 0.368627451, alpha: 1)
        
        view.addSubview(imageView)
        imageView.centerInSuperview()
        imageView.width(view.frame.width * 0.6)
        imageView.height(view.frame.width * 0.6)
        
    }


}

