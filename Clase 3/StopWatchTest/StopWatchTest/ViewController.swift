//
//  ViewController.swift
//  StopWatchTest
//
//  Created by Sergio Huerta on 8/16/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var isPlaying:Bool=false
    var counter:Float = 0.0
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startTimer(_ sender: Any) {
        if(isPlaying){
            return
        }
        startButton.isEnabled=false
        pauseButton.isEnabled=true
        stopButton.isEnabled=true
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying=true
    }

    @IBAction func pauseTimer(_ sender: Any) {
        //startButton.isEnabled=true
        //pauseButton.isEnabled=false
        if(timer.isValid){
            timer.invalidate()
            isPlaying=false
        }else{
            startTimer(sender)
        }
    }
    
    
    @IBAction func stopTimer(_ sender: Any) {
        startButton.isEnabled=true
        pauseButton.isEnabled=false
        timer.invalidate()
        isPlaying=false
        counter=0.0
        timeLabel.text=String(counter)
    }
    
    func UpdateTimer(){
         counter += 0.1
        timeLabel.text=String(format: "%.1f", counter)
    }
    
}

