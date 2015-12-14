//
//  PizzaSizeViewController.swift
//  Pizzeria
//
//  Created by Jose on 14/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import UIKit

class PizzaSizeViewController:UIViewController {
    
    var pedido:Pedido?
    
    @IBOutlet weak var tamPizza: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! MasaViewController
        if (tamPizza.selectedSegmentIndex == 0){
            pedido?.size = "Pequeña"
        } else if(tamPizza.selectedSegmentIndex == 1){
            pedido?.size = "Mediana"
        } else if (tamPizza.selectedSegmentIndex == 2){
            pedido?.size = "Grande"
        }
        sigVista.pedido = self.pedido
    }
    
}

