//
//  QuesoViewController.swift
//  Pizzeria
//
//  Created by Jose on 14/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import UIKit

class QuesoViewController:UIViewController {
    
    var pedido:Pedido?
    
    @IBOutlet weak var queso: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! IngredientesViewController
       pedido?.cheese = queso.titleForSegmentAtIndex(queso.selectedSegmentIndex)!
        sigVista.pedido = self.pedido
    }
    
}