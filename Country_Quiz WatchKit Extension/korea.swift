//
//  korea.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/04.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class korea: WKInterfaceController {
    public var count=0
    
    @IBOutlet weak var score: WKInterfaceLabel!
    
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
    
    @IBAction func goToCanada() {
        self.count=self.count+1
        pushController(withName: "canada", context: count)
        self.score.setText("Score : \(self.count)")
    }
    
    @IBAction func nextToCanada() {
        pushController(withName: "canada", context: count)
    }
    
}
