//
//  ViewController.swift
//  lab3 try3
//
//  Created by Mohin Patel on 2/23/17.
//  Copyright © 2017 Mohin Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currStopWatch: Stopwatch = Stopwatch()
    var stopped = false
    var timer1: Timer = Timer()
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButton(_ sender: UIButton) {
        currStopWatch.start()
        timer1 = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                      selector: #selector(updateTime),
                                      userInfo: nil,
                                      repeats: true)
    }
    @IBAction func stopButton(_ sender: UIButton) {
        timer1.invalidate()
        currStopWatch.stop()
        
    }
    func updateTime(_ timer: Timer) {

        currStopWatch.updateDate()
        timeLabel.text = currStopWatch.time

    }
}

