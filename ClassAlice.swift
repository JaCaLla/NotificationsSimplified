//
//  ClassAlice.swift
//  NotificationSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 26/03/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

class ClassAlice: NSObject {

    var counter:Int = Int()
    
    override init() {
        super.init()
        
        counter = 0
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "methodOfReceivedNotification:", name:NotificationMessage.kTimerNotificationId.rawValue, object: nil)
    }
    
    
    func methodOfReceivedNotification(notification:NSNotification){
        println( "Message intercepted from Alice")
        
        counter++;
        
        if(counter >= 3){
            NSNotificationCenter.defaultCenter().removeObserver(self)
        }
    }
    


}
