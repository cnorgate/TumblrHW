//
//  SearchViewController.swift
//  TumblrHW
//
//  Created by Cameron Norgate on 10/8/15.
//  Copyright © 2015 Cameron Norgate. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var backgroundCover: UIView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    
    var animatedImage: UIImage!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
            
        animatedImage = UIImage.animatedImageWithImages(images, duration: 0.5)
        



        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        backgroundCover.alpha = 1
        
        imageView.image = self.animatedImage
        
        let delay = 0.5 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue()) {
            UIView.animateWithDuration(0.5, delay: 0, options: [], animations: { () -> Void in
                self.backgroundCover.alpha = 0
                }, completion: { (completed) -> Void in
                    //nothing
            })
            
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
