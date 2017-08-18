//
//  AudioViewController.swift
//  UnionApp
//
//  Created by Sergio Huerta on 8/17/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import AVFoundation

class AudioViewController: UIViewController {
    var player: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tercera")

        // Do any additional setup after loading the view.
        guard let asset = NSDataAsset(name:"02 Castlevania III_ Dracula's Curse - Beginning") else{
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
       // player.play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if(sender.isOn){
            
            player.setVolume(1, fadeDuration: 2.0)
            player.play()
        }else{
            
            player.setVolume(0, fadeDuration: 2.0)
            player.stop()
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
