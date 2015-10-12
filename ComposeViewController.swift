//
//  ComposeViewController.swift
//  TumblrHW
//
//  Created by Cameron Norgate on 10/8/15.
//  Copyright © 2015 Cameron Norgate. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
    
    @IBOutlet weak var textIcon: UIButton!
    var textOrigin: CGPoint!
    
    @IBOutlet weak var photoIcon: UIButton!
    var photoOrigin: CGPoint!
    
    
    @IBOutlet weak var quoteIcon: UIButton!
    var quoteOrigin: CGPoint!
    
    @IBOutlet weak var linkIcon: UIButton!
    var linkOrigin: CGPoint!
    
    
    @IBOutlet weak var chatIcon: UIButton!
    var chatOrigin: CGPoint!
    
    
    @IBOutlet weak var videoIcon: UIButton!
    var videoOrigin: CGPoint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textOrigin = textIcon.center
        textIcon.center = CGPoint(x: textOrigin.x , y: textOrigin.y + 500)
        photoOrigin = photoIcon.center
        photoIcon.center = CGPoint(x: photoOrigin.x , y: photoOrigin.y + 500)
        quoteOrigin = quoteIcon.center
        quoteIcon.center = CGPoint(x: quoteOrigin.x , y: quoteOrigin.y + 500)
        linkOrigin = linkIcon.center
        linkIcon.center = CGPoint(x: linkOrigin.x , y: linkOrigin.y + 500)
        chatOrigin = chatIcon.center
        chatIcon.center = CGPoint(x: chatOrigin.x , y: chatOrigin.y + 500)
        videoOrigin = videoIcon.center
        videoIcon.center = CGPoint(x: videoOrigin.x , y: videoOrigin.y + 500)
        
        print("load")
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, delay: 0, options: [], animations: { () -> Void in
            self.textIcon.center = self.textOrigin
            self.videoIcon.center = self.videoOrigin
            }, completion: { (completed) -> Void in
                //nothing
        })
        
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: { () -> Void in
            self.photoIcon.center = self.photoOrigin
            self.linkIcon.center = self.linkOrigin
            }, completion: { (completed) -> Void in
                //nothing
        })
        
        UIView.animateWithDuration(0.4, delay: 0, options: [], animations: { () -> Void in
            self.quoteIcon.center = self.quoteOrigin
            self.chatIcon.center = self.chatOrigin
            }, completion: { (completed) -> Void in
                //nothing
        })
        
        iconAnimate(2)

        //print("appear")
    }
    
    //Attempt to create a function automate this functionality
    func iconAnimate (delay: Double){
        print(delay)
        
        UIView.animateWithDuration(0.3, delay: delay, options: [], animations: { () -> Void in
            print("wait 2 seconds")
            }, completion: { (completed) -> Void in
                //nothing
        })
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    
    
    
    
    @IBAction func nevermind(sender: AnyObject) {
        
        UIView.animateWithDuration(0.3, delay: 0, options: [], animations: { () -> Void in
            self.textIcon.center = CGPoint(x: self.textOrigin.x , y: self.textOrigin.y - 1000)
            self.videoIcon.center = CGPoint(x: self.videoOrigin.x , y: self.videoOrigin.y - 1000)
            }, completion: { (completed) -> Void in
                //nothing
        })
        
        UIView.animateWithDuration(0.4, delay: 0, options: [], animations: { () -> Void in
            self.quoteIcon.center = CGPoint(x: self.quoteOrigin.x , y: self.quoteOrigin.y - 1000)
            self.chatIcon.center = CGPoint(x: self.chatOrigin.x , y: self.chatOrigin.y - 1000)
            }, completion: { (completed) -> Void in
                //nothing
        })
        
        UIView.animateWithDuration(0.5, delay: 0, options: [], animations: { () -> Void in
            self.photoIcon.center = CGPoint(x: self.photoOrigin.x , y: self.photoOrigin.y - 1000)
            self.linkIcon.center = CGPoint(x: self.linkOrigin.x , y: self.linkOrigin.y - 1000)
            }, completion: { (completed) -> Void in
                self.dismissViewControllerAnimated(true, completion: {});
        })

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
