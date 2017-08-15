//
//  ViewController.swift
//  BenzAppleTV
//
//  Created by Sergio Huerta on 8/15/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //clase 2
    @IBOutlet weak var marca: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        marca.text="";
        color.text="";
        imagen.isHidden=true;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func mostrarMarca(_ sender: Any) {
        marca.text="Mercedez Benz";
    }
    
    
    @IBAction func mostrarColor(_ sender: Any) {
        let colorText:String=color.text!;
        switch(colorText){
        case "Azul":
            color.text="Negro";
            color.textColor=UIColor.black;
            imagen.image=#imageLiteral(resourceName: "Negro.png");
            break;
        case "Negro":
            color.text="Plata";
            color.textColor=UIColor.gray;
            imagen.image=#imageLiteral(resourceName: "Plata.jpg");
            break;
        case "Plata":
            color.text="Rojo";
            color.textColor=UIColor.red;
            imagen.image=#imageLiteral(resourceName: "rojo.jpg");
            break;
        case "Rojo":
            color.text="Azul";
            color.textColor=UIColor.blue;
            imagen.image=#imageLiteral(resourceName: "azul.png");
            break;
        default:
            color.text="Negro";
            color.textColor=UIColor.black;
            imagen.image=#imageLiteral(resourceName: "Negro.png");
            break;
        }

    }
    
    @IBAction func mostrarImagen(_ sender: Any) {
        if(imagen.isHidden){
            imagen.isHidden=false;
        }else{
            imagen.isHidden=true;
        }
    }
    

}

