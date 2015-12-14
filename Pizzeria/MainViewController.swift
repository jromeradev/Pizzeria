//
//  MainViewController.swift
//  Pizzeria
//
//  Created by Jose on 14/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//
import UIKit

class MainViewController:UIViewController {
  
    var pedido = Pedido()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! PizzaSizeViewController
        sigVista.pedido = self.pedido
    }


}
