//
//  signInViewController.swift
//  TumblrHW
//
//  Created by Cameron Norgate on 10/12/15.
//  Copyright © 2015 Cameron Norgate. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        emailField.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelSignIn(sender: AnyObject) {
        self.view.endEditing(true)
        
        UIView.animateWithDuration(1, delay: 1, options: [], animations: { () -> Void in
            
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
