//
//  ViewController.swift
//  ParseChat
//
//  Created by Prakash Pudhucode on 2/22/17.
//  Copyright © 2017 Prakash Pudhucode. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let cancelAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
        // handle cancel response here. Doing nothing will dismiss the view.
    }
    // add the cancel action to the alertController
    alertController.addAction(cancelAction)
    
    // create an OK action
    let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
        // handle response here.
    }
    // add the OK action to the alert controller
    alertController.addAction(OKAction)

    @IBAction func createAccount(_ sender: Any) {
            var user = PFUser()
            user.username = "myUsername"
            user.password = "myPassword"
            user.email = "email@example.com"
            // other fields can be set just like with PFObject
            user["phone"] = "415-392-0202"
            
            user.signUpInBackgroundWithBlock {
                (succeeded: Bool, error: NSError?) -> Void in
                if let error = error {
                    let errorString = error.userInfo["error"] as? NSString
                    
                    // Show the errorString somewhere and let the user try again.
                } else {
                    // Hooray! Let them use the app now.
                }
            }
    }

}

