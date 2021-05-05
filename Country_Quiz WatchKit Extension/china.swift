//
//  china.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/05.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class china: WKInterfaceController {

    @IBOutlet weak var score_2: WKInterfaceLabel!
    public var tmp=0
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let count = context as? Int{
            score_2.setText("Score : \(count)")
            tmp=count
        }
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
    @IBAction func goToFrance() {
        self.tmp=self.tmp+1
        pushController(withName: "france", context: tmp)
    }
    
    @IBAction func nextToFrance() {
        pushController(withName: "france", context: tmp)
    }
}
