//
//  ViewController.swift
//  NotificationSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 26/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

public enum NotificationMessage: String {
    
    case kTimerNotificationId = "NotificationIdentifier"
}

class ViewController: UIViewController {

    
    var aAliceClass:ClassAlice!
    var aBobClass:ClassBob!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aAliceClass = ClassAlice()
        aBobClass = ClassBob()
        
        // Do any additional setup after loading the view, typically from a nib.
        var timer = NSTimer.scheduledTimerWithTimeInterval(3, target: self, selector: Selector("sendNotification"), userInfo: nil, repeats: true)
    }
    
    func sendNotification(){
        NSNotificationCenter.defaultCenter().postNotificationName(NotificationMessage.kTimerNotificationId.rawValue, object: nil)
    }

}

