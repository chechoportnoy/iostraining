//
//  Vista2ViewController.swift
//  Mercedes Benz
//
//  Created by Sergio Huerta on 8/14/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class Vista2ViewController: UIViewController {
    
    @IBOutlet weak var color: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mostrarColor(_ sender: Any) {
        let colorText:String=color.text!;
        switch(colorText){
        case "Azul":
            color.text="Negro";
            color.textColor=UIColor.black;
            break;
        case "Negro":
            color.text="Plata";
            color.textColor=UIColor.gray;
            break;
        case "Plata":
            color.text="Rojo";
            color.textColor=UIColor.red;
            break;
        case "Rojo":
            color.text="Azul";
            color.textColor=UIColor.blue;
            break;
        default:
            color.text="Negro";
            color.textColor=UIColor.black;
            break;
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
