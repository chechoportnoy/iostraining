//
//  ViewController.swift
//  AccelerometerData
//
//  Created by Sergio Huerta on 8/18/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    lazy var motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.layer.borderColor=UIColor.black.cgColor
        textView.layer.borderWidth=1
        textView.showsVerticalScrollIndicator=true
        
        if(motionManager.isAccelerometerAvailable){
            _ = OperationQueue()
            motionManager.startAccelerometerUpdates(to: OperationQueue.main,
                                                    withHandler: {
                                                        (data:CMAccelerometerData?, error: Error?) in
                                                        self.textView.text.append("X= \(String(describing: data?.acceleration.x))")
                                                        self.textView.text.append("Y= \(String(describing: data?.acceleration.x))")
                                                        self.textView.text.append("Z= \(String(describing: data?.acceleration.x))")
                                                        
                                                                    })
        }else{
            textView.text.append("NO HAY ACELEROMETRO");
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func limpiarLog(_ sender: Any) {
        
        textView.text=""
    }
    
}

