//
//  ViewController.swift
//  UIKitDynamics
//
//  Created by Sergio Huerta on 8/16/17.
//  Copyright © 2017 Sergio Huerta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var animator:UIDynamicAnimator!
    var snapBehavior:UISnapBehavior!
    
    var reset:Bool=false
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(userHasTapped))
        self.view.addGestureRecognizer(tapGesture);
        
        //crea Dynamics
        animator = UIDynamicAnimator(referenceView: self.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func userHasTapped(tap:UITapGestureRecognizer){
        let touchPoint = tap.location(in: self.view)
        if(snapBehavior != nil){
            animator.removeBehavior(snapBehavior)
        }
        
        snapBehavior = UISnapBehavior(item: imageView, snapTo: touchPoint)
        snapBehavior.damping = 0.3
        animator.addBehavior(snapBehavior)
    }

    @IBAction func rotar(_ sender: Any) {
        
        if(reset){
            UIView.animate(withDuration: 2.0,
                           animations: {self.imageView.transform=CGAffineTransform(rotationAngle: 0 )})
            reset=false
        }else{
            UIView.animate(withDuration: 2.0,
                           animations: {self.imageView.transform=CGAffineTransform(rotationAngle: CGFloat.pi  )})
            reset=true
        }
        
    }

}

