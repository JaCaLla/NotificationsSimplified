//
//  ClassAlice.swift
//  NotificationSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 26/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

class ClassBob: NSObject {

    
    override init() {
        super.init()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "methodOfReceivedNotification:", name:NotificationMessage.kTimerNotificationId.rawValue, object: nil)
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func methodOfReceivedNotification(notification:NSNotification){
        println( "Message intercepted from Bob")

    }

}
