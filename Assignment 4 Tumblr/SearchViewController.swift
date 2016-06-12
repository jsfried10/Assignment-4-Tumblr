//
//  SearchViewController.swift
//  Assignment 4 Tumblr
//
//  Created by Jeremy Friedland on 6/9/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchView: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    
    var animatedImage: UIImage!
    
    override func viewWillAppear(animated: Bool) {
        searchView.alpha = 0
        loadingImage.alpha = 1
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        delay(1) {
            self.searchView.alpha = 1
            self.loadingImage.alpha = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)

        loadingImage.image = animatedImage
        

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
