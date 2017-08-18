//
//  SecondViewController.swift
//  UnionApp
//
//  Created by Sergio Huerta on 8/17/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var var1: UITextField!
    
    @IBOutlet weak var var2: UITextField!
    
    @IBOutlet weak var result: UILabel!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Segunda")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func suma(_ sender: Any) {
        if(!(var1.text?.isEmpty)! && !(var2.text?.isEmpty)!){
            result.text = String(Float(var1.text!)! + Float(var2.text!)!)
        }
    }
    
    
    @IBAction func resta(_ sender: Any) {
        if(!(var1.text?.isEmpty)! && !(var2.text?.isEmpty)!){
            result.text = String(Float(var1.text!)! - Float(var2.text!)!)
        }
    }
    
    @IBAction func division(_ sender: Any) {
        if(!(var1.text?.isEmpty)! && !(var2.text?.isEmpty)!){
            result.text = String(Float(var1.text!)! / Float(var2.text!)!)
        }
    }
    
    
    @IBAction func multiplicacion(_ sender: Any) {
        if(!(var1.text?.isEmpty)! && !(var2.text?.isEmpty)!){
            result.text = String(Float(var1.text!)! * Float(var2.text!)!)
        }
    }


}

