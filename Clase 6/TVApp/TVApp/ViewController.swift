//
//  ViewController.swift
//  TVApp
//
//  Created by Sergio Huerta on 8/19/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player :AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let asset = NSDataAsset(name:"04 Whiplash") else{
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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func musicON(_ sender: Any) {
        
        player.setVolume(1, fadeDuration: 2.0)
        
    }

    @IBAction func musicOFF(_ sender: Any) {
        player.setVolume(0, fadeDuration: 2.0)
    }
}

