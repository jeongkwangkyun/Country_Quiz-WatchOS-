//
//  japan_city.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/06.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class japan_city: WKInterfaceController {
    var tmp=0
    
    @IBOutlet weak var total_4: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let count = context as? Int{
            total_4.setText("Score : \(count)")
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
    @IBAction func japna_wrong() {
        pushController(withName: "swiz_city", context: tmp)
    }
    @IBAction func japna_correct() {
        tmp=tmp+1
        pushController(withName: "swiz_city", context: tmp)
    }
    
}
