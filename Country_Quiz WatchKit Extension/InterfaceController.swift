//
//  InterfaceController.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/04.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func goToKorea() {
        pushController(withName: "korea", context: self)
    }
    
    @IBAction func goToKoreaCity() {
        pushController(withName: "korea_city", context: self)
    }
    
}
