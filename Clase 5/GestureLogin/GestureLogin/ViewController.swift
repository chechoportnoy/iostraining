//
//  ViewController.swift
//  GestureLogin
//
//  Created by Sergio Huerta on 8/18/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var clave: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappingAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: Any) {
        print("login ...")
    }
    
    
}

extension UIViewController{
    
    func hideKeyboardWhenTappingAround(){
        let tap:UITapGestureRecognizer = UITapGestureRecognizer (target:self,action:#selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    
    func dismissKeyboard(){
        view.endEditing(true)
    }
    
}

