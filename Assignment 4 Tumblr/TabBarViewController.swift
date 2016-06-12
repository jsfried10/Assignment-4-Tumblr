//
//  TabBarViewController.swift
//  Assignment 4 Tumblr
//
//  Created by Jeremy Friedland on 6/9/16.
//  Copyright © 2016 Jeremy Friedland. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
   
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    @IBOutlet weak var tooltipView: UIImageView!
    var toolTipViewOriginalCenter: CGPoint!
    var toolTipOffset: CGFloat!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didTapButton(buttons[selectedIndex])
        
        toolTipViewOriginalCenter = tooltipView.center
        toolTipOffset = 10
        
        UIView.animateWithDuration(2.0, delay:0, options: [.Repeat, .Autoreverse], animations: {
            
            self.tooltipView.center = CGPoint(x: self.tooltipView.center.x, y: self.tooltipView.center.y + self.toolTipOffset)
            }, completion: nil)
        
        
        
        
    }
    
    @IBAction func didTapButton(sender: UIButton) {
        
        let previousIndex = selectedIndex
        let previousVC = viewControllers[previousIndex]
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        
        vc.didMoveToParentViewController(self)
        
        if selectedIndex == 1 {
            tooltipView.alpha = 0
            
        } else {
        }
        
        
        
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
