//
//  china_city.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/06.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class china_city: WKInterfaceController {

    var tmp=0
    
    @IBOutlet weak var total_2: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let count = context as? Int{
            total_2.setText("Score : \(count)")
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

    @IBAction func china_wrong() {
        pushController(withName: "france_city", context:tmp)
    }
    @IBAction func china_correct() {
        tmp=tmp+1
        pushController(withName: "france_city", context:tmp)
    }
}
