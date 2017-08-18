//
//  ViewController.swift
//  LocalNotificationTest
//
//  Created by Sergio Huerta on 8/17/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UNUserNotificationCenter.current().requestAuthorization(options: UNAuthorizationOptions.alert,
                                                                completionHandler: {
                                                                    (success, error) in
                                                                    if(success){
                                                                        print("success")
                                                                    }else{
                                                                        print("error")
                                                                    }
            
                                                                }
                                                            )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendNotification(_ sender: Any) {
        let content = UNMutableNotificationContent()
            content.title="ESTA ES UNA NOTIFICACION"
            content.subtitle="De suma importancia"
            content.body="Creo que se salio el pug y anda causando panico en la calle"
        
        let imageName="pug"
        
        guard let imageURL=Bundle.main.url(forResource: imageName, withExtension: "png")
            else{ print("Error al cargar la imagen"); return; }
        
        let attachment = try! UNNotificationAttachment(identifier: imageName, url: imageURL, options: .none)
        
        content.attachments = [attachment]
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let fecha:Date = Date()
        print(String(describing: fecha))
        let request = UNNotificationRequest(identifier: "notificacion.id." + String(describing: fecha), content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            if((error) != nil){
                print("error al enviar notificacion")
            }else{
                print("Notificacion enviada")

            }
        }
    }

}

