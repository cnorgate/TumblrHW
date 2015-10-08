//
//  TabBarViewController.swift
//  TumblrHW
//
//  Created by Cameron Norgate on 10/8/15.
//  Copyright © 2015 Cameron Norgate. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    // Create view controller variables
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    //Create outlets for buttons
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    
    // Outlet for content view
    @IBOutlet weak var contentView: UIView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view controller variables to be associated with the actual view controllers on the storyboard
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    //Function to remove the highlight of all buttons, before adding it back
    func unhighlight() {
        homeButton.selected = false
        searchButton.selected = false
        composeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
    }

    @IBAction func onHomeButton(button: UIButton) {
        unhighlight()
        
        button.selected = true
        
        //Add child view, and 'did move to parent' provides information to controllers about status of a given related controller
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        
        
        // In case clipping subviews doesn't work
        // homeViewController.view.frame = contentView.bounds
    }
    
    @IBAction func onSearchButton(button: UIButton) {
        unhighlight()
        
        button.selected = true
        
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)

    }
    
    @IBAction func onComposeButton(button: UIButton) {
        unhighlight()
        
        button.selected = true
        
        addChildViewController(composeViewController)
        contentView.addSubview(composeViewController.view)
        composeViewController.didMoveToParentViewController(self)

    }
    
    @IBAction func onAccountButton(button: UIButton) {
        unhighlight()
        
        button.selected = true
        
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        accountViewController.didMoveToParentViewController(self)

    }
    
    @IBAction func onTrendingButton(button: UIButton) {
        unhighlight()
        
        button.selected = true
        
        addChildViewController(trendingViewController)
        contentView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)

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
