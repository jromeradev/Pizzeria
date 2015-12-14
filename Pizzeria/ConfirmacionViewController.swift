import UIKit

class ConfirmacionViewController:UIViewController {
    
    var pedido:Pedido?
    
    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tamaño.text = pedido!.size
        masa.text = pedido!.masa
        queso.text = pedido!.cheese
        ingredientes.text = pedido!.ingredientes.joinWithSeparator("-")
        
    }
    
    @IBAction func aceptar(sender: AnyObject) {
        
        
    }
    
}
