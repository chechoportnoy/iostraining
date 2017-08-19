//
//  FirstViewController.swift
//  UnionApp2
//
//  Created by Sergio Huerta on 8/19/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {
     var player: AVAudioPlayer!
    
    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var clave: UITextField!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        guard let asset = NSDataAsset(name:"Elevator-music") else{
            print("Error al cargar el archivo de audio"); return
        }
        
        do{
            player = try AVAudioPlayer(data: asset.data)
        }catch{
            print("Error al reproducir el audio");
            return
        }
        
        player.volume=0
        player.numberOfLoops = -1
        player.play()
        
        self.hideKeyboardWhenTappingAround()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if(sender.isOn){
            print("Switch ON")
            player.setVolume(1, fadeDuration: 2.0)
        }else{
            player.setVolume(0, fadeDuration: 2.0)
        }
        
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
