//
//  IngredientesViewController.swift
//  Pizzeria
//
//  Created by Jose on 14/12/15.
//  Copyright © 2015 jromeradev. All rights reserved.
//

import UIKit

class IngredientesViewController:UIViewController {
    
    var pedido:Pedido?
    
    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!

    @IBOutlet weak var pavo: UISwitch!
    
    @IBOutlet weak var salchicha: UISwitch!
    
    @IBOutlet weak var aceitunas: UISwitch!
    
    @IBOutlet weak var cebolla: UISwitch!

    @IBOutlet weak var pimiento: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}