//
//  SecondViewController.swift
//  UnionApp2
//
//  Created by Sergio Huerta on 8/19/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var managedObjects:[NSManagedObject] = []

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate=self
        tableView.dataSource=self
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        let managedContext = appDelegate!.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Lista")
        
        do{
            managedObjects = try managedContext.fetch(fetchRequest)
        }catch let error as NSError {
            print("NO puedo recuperar los datos guardados. El error fue: \(error), \(error.userInfo)")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func agregarBanda(_ sender: Any) {
        
        let alerta = UIAlertController(title: "Agregar Banda",
                                       message: "Ingresa el nombre de la banda",
                                       preferredStyle: UIAlertControllerStyle.alert)
        
        let guardar = UIAlertAction(title: "Agregar",
                                    style: UIAlertActionStyle.default,
                                    handler: {(action:UIAlertAction) -> Void in
                                        let textField = alerta.textFields!.first
                                        //self.palabras.append(textField!.text!)
                                        self.guardarPalabra(palabra: textField!.text!)
                                        self.tableView.reloadData() }
        )
        
        let cancelar = UIAlertAction(title: "Cancelar",
                                     style: UIAlertActionStyle.cancel)
        
        alerta.addTextField{(textField) in textField.placeholder="Nombre de la banda"}
        
        alerta.addAction(cancelar)
        alerta.addAction(guardar)
        
        present(alerta, animated: true, completion: nil)
    }
    
    
    func guardarPalabra(palabra: String){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let managedContext = appDelegate?.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Lista", in: managedContext!)!
        let managedObject = NSManagedObject(entity: entity, insertInto: managedContext)
        
        managedObject.setValue(palabra, forKey: "palabra")
        
        do{
            try managedContext?.save()
            managedObjects.append(managedObject)
        }catch let error as NSError{
            print("No se pudo guardar, error:\(error), \(error.userInfo)")
        }
    }
    
    
    // MARK: - Table view data source
    
     func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return managedObjects.count
    }
    
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "palabra", for: indexPath)
        
        
        // Configure the cell...
        let managedObject = managedObjects[indexPath.row]
        cell.textLabel?.text = managedObject.value(forKey: "palabra") as? String
        
        
        return cell
    }



}

