//
//  ViewController.swift
//  Mercedes Benz
//
//  Created by Sergio Huerta on 8/14/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var marca: UILabel!
    
    @IBOutlet weak var imagen: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        marca.text="";
        imagen.isHidden=true;
        self.title="PRIMERO";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mostrarMarca(_ sender: Any) {
        marca.text="Mercedez Benz";
    }
    

    
    @IBAction func mostrarImagen(_ sender: Any) {
        if(imagen.isHidden){
            imagen.isHidden=false;
        }else{
            imagen.isHidden=true;
        }
    }
}

