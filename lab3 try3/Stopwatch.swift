//
//  Stopwatch.swift
//  lab3 try3
//
//  Created by Mohin Patel on 2/23/17.
//  Copyright © 2017 Mohin Patel. All rights reserved.
//

import Foundation
class Stopwatch {
//    let timeString = String(format: "%02d:%02d.%d", 0, 0, 0)
 //   var timer: Timer = Timer()
    var time: String
    var date: Date?
    var started = false
    init() {
        time = "00:00.00"
    }
    func start() {
        if (date == nil) {
            date = Date()
        } else {
            date = nil
            time = "00:00.00"
        }
        
    }
    func stop() {
        date = nil
    }
    func updateDate(){
        if (date != nil) {
            let currTime = -date!.timeIntervalSinceNow * 100
            let minutes = round(currTime / (60*100))
            let seconds = round(currTime / (100))
            let milliSeconds = round(currTime.truncatingRemainder(dividingBy: 100))
            time = String(format: "%02d:%02d.%d", Int(minutes), Int(seconds),  Int(milliSeconds))
            
        }
        
    }
    
}
