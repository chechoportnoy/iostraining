//
//  ViewController.swift
//  DatePickerTest
//
//  Created by Sergio Huerta on 8/16/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var selectedDate: UILabel!
    
    private var dateFormatter:DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dateFormatter=DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.locale=Locale(identifier:"es_MX")
        
        
        datePicker.datePickerMode=UIDatePickerMode.date
        selectedDate.text=dateFormatter.string(from: datePicker.date)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


    @IBAction func dateValueChanged(_ sender: Any) {
        selectedDate.text=dateFormatter.string(from: datePicker.date)
    }
}

