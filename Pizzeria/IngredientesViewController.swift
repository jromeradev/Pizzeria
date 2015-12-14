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
    
    @IBOutlet weak var confirmar: UIBarButtonItem!
    
    var ingredienteSeleccionados:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        jamon.addTarget(self, action: "jamonChange:", forControlEvents: .ValueChanged)
        pepperoni.addTarget(self, action: "pepperoniChange:", forControlEvents: .ValueChanged)
        pavo.addTarget(self, action: "pavoChange:", forControlEvents: .ValueChanged)
        salchicha.addTarget(self, action: "salchichaChange:", forControlEvents: .ValueChanged)
        aceitunas.addTarget(self, action: "aceitunasChange:", forControlEvents: .ValueChanged)
        cebolla.addTarget(self, action: "cebollaChange:", forControlEvents: .ValueChanged)
        pimiento.addTarget(self, action: "pimientoChange:", forControlEvents: .ValueChanged)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ConfirmacionViewController
        sigVista.pedido = self.pedido
    }
    
    func comprobarConfirmar(){
        if ingredienteSeleccionados != 0 {
            confirmar.enabled = true
        } else {
            confirmar.enabled = false
        }
    }
    
    func jamonChange(aSwitch: UISwitch) {
        if jamon.on {
            pedido!.addIngrediente("jamon")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("jamon")
            ingredienteSeleccionados--
        }
       comprobarConfirmar()
    }

    func pepperoniChange(aSwitch: UISwitch) {
        if pepperoni.on {
            pedido!.addIngrediente("pepperoni")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("pepperoni")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
    
    func pavoChange(aSwitch: UISwitch) {
        if pavo.on {
            pedido!.addIngrediente("pavo")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("pavo")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
    
    func salchichaChange(aSwitch: UISwitch) {
        if salchicha.on {
            pedido!.addIngrediente("salchicha")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("salchicha")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
    
    func aceitunasChange(aSwitch: UISwitch) {
        if aceitunas.on {
            pedido!.addIngrediente("aceitunas")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("aceitunas")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
    
    func cebollaChange(aSwitch: UISwitch) {
        if cebolla.on {
            pedido!.addIngrediente("cebolla")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("cebolla")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
    
    func pimientoChange(aSwitch: UISwitch) {
        if pimiento.on {
            pedido!.addIngrediente("pimiento")
            ingredienteSeleccionados++
        } else {
            pedido!.removeIngrediente("pimiento")
            ingredienteSeleccionados--
        }
        comprobarConfirmar()
    }
}