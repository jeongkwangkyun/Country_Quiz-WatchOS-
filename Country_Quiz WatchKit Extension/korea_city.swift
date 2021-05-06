//
//  korea_city.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/05.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class korea_city: WKInterfaceController {
    public var count=0
    
    @IBOutlet weak var total: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        total.setText("Score : \(self.count)")
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
    @IBAction func korea_wrong() {
        self.count=self.count+1
        pushController(withName: "canada_city", context: count)
    }
    @IBAction func korea_correct() {
        self.count=self.count+1
        pushController(withName: "canada_city", context: count)
    }
    
}
