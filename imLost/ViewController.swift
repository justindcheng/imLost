//
//  ViewController.swift
//  imLost
//
//  Created by Ho Ching Justin Cheng on 9/19/15.
//  Copyright © 2015 Ho Ching Justin Cheng. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        }
        
        let prefs = NSUserDefaults.standardUserDefaults()
        if (prefs.boolForKey("firsttimeflag") == false) {
            prefs.setBool(true, forKey: "firsttimeflag")
            prefs.synchronize()
            //self.presentViewController(, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

