//
//  ViewController.swift
//  RESTApp
//
//  Created by Sergio Huerta on 8/18/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var webView: UIWebView!
    
    var palabra:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buscar(_ sender: Any) {
        
        let palabra:String = (textField.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))!
        
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles="+palabra
        
        let objetoUrl:URL = URL(string:urlCompleto)!

        
        let tarea = URLSession.shared.dataTask(with: objetoUrl) {(datos, respuesta, error) in
        
            if(error != nil){
                print(error!)
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    
                    //print (json)
                    
                    let querySubjson = json["query"] as! [String:Any]
                    
                    //print(querySubjson)
                    
                    let pagesSubjson = querySubjson["pages"] as! [String: Any]
                    
                    print(pagesSubjson)
                    
                    let idSubJson = pagesSubjson.first?.value as! [String:Any]
                    
                   print(idSubJson)
                    
                    let extractString = idSubJson["extract"] as! String
                   
                    print(extractString)
                    
                    DispatchQueue.main.sync(execute: {
                            self.webView.loadHTMLString(extractString, baseURL: nil)
                        })
                }catch{
                    print("El procesamiento del JSON tuve un error")
                }
            }
        }
     
        tarea.resume()
    }
}

