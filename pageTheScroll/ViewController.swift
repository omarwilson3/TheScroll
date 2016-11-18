//
//  ViewController.swift
//  pageTheScroll
//
//  Created by Omar Wilson on 11/16/16.
//  Copyright © 2016 Omar Wilson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
        
        // scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        
        for i in 0...2 {
            let scrollWidth = scrollView.frame.size.width
            let image = UIImage(named: "icon\(i).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(i)
            contentWidth += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
    }
    scrollView.clipsToBounds = false
    scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }

}



