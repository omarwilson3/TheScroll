//
//  ViewController.swift
//  pageTheScroll
//
//  Created by Omar Wilson on 11/16/16.
//  Copyright © 2016 Omar Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...2 {
            let image = UIImage(named: "icon\(i).png")
            images.append(UIImageView(image: image))
        }
        
        print("Count: \(images.count)")
    }



}

