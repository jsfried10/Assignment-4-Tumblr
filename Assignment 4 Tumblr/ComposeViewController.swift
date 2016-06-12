//
//  ComposeViewController.swift
//  Assignment 4 Tumblr
//
//  Created by Jeremy Friedland on 6/9/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var nevermindButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet var backgroundView: UIView!
    
    var fadeTransition: FadeTransition!

    
    
    override func viewWillAppear(animated: Bool) {
        
        chatButton.center.y = view.frame.size.height + chatButton.frame.size.height + 100
        linkButton.center.y = view.frame.size.height + linkButton.frame.size.height + 500
        quoteButton.center.y = view.frame.size.height + quoteButton.frame.size.height
        photoButton.center.y = view.frame.size.height + photoButton.frame.size.height + 200
        textButton.center.y = view.frame.size.height + textButton.frame.size.height + 800
        videoButton.center.y = view.frame.size.height + videoButton.frame.size.height + 350
  
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(0.6, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 1, options:[] , animations: { () -> Void in
            
            self.textButton.center.y = 200
            self.chatButton.center.y = 200
            self.linkButton.center.y = 200
            self.photoButton.center.y = 320
            self.quoteButton.center.y = 320
            self.videoButton.center.y = 320
            }, completion: nil)
        
    }
    
    @IBAction func didTapNevermind(sender: AnyObject) {
        
        
        UIView.animateWithDuration(0.7, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.1, options:[] , animations: { () -> Void in
            
            self.textButton.center.y = -200
            self.chatButton.center.y = -700
            self.linkButton.center.y = -100
            self.photoButton.center.y = -400
            self.quoteButton.center.y = -1000
            self.videoButton.center.y = -550
            
            }, completion: nil)
        
        delay(0.5) {
            self.dismissViewControllerAnimated(true, completion: nil)

        }
        

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  }


