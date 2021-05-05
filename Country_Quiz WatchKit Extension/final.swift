//
//  final.swift
//  Country_Quiz WatchKit Extension
//
//  Created by 정광균 on 2021/05/05.
//  Copyright © 2021 정광균. All rights reserved.
//

import WatchKit
import Foundation


class final: WKInterfaceController {
    var tmp=0
    
    @IBOutlet weak var total_count: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        super.awake(withContext: context)
        if let count = context as? Int{
            total_count.setText("최종 점수 : \(count)")
            
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
    @IBAction func goToHome() {
        popToRootController()
    }
    
}
