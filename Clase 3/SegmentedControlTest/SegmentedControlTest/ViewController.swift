//
//  ViewController.swift
//  SegmentedControlTest
//
//  Created by Sergio Huerta on 8/16/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var selectedSegment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedSegment.text=""
        segmentedControl.selectedSegmentIndex = -1
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedValueChanged(_ sender: Any) {
        
        selectedSegment.text=segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)
        
    }

}

