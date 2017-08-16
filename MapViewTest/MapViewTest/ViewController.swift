//
//  ViewController.swift
//  MapViewTest
//
//  Created by Sergio Huerta on 8/16/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.showsUserLocation=true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func mostrarMiUbicacion(_ sender: Any) {
        mapView.setCenter(mapView.userLocation.coordinate, animated: true)
    }
    
    
    
    @IBAction func segmentedControlValueChanged(_ sender: Any) {
        
        if(segmentedControl.selectedSegmentIndex == 1){
            mapView.mapType=MKMapType.hybrid
        }else{
            mapView.mapType=MKMapType.standard
        }
    }
}

