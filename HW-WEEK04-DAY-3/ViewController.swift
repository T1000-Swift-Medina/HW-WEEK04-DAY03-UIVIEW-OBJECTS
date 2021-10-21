

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labl1: UILabel!
    @IBOutlet weak var labl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var kidName: UITextField!
    
    @IBOutlet weak var accYoutube: UISwitch!
    @IBOutlet weak var accMadrasati: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unlock(_ sender: Any) {
        
        if(nameText.text == ""){
            labl1.text = "Please enter your name"
            
        }
        else if (nameText.text == kidName.text) {
            labl1.text = "Unlocked ✅"
        }
        
        else {
            labl1.text = "locked  ❌"
        }
    }
    
    
    @IBAction func openYoutupe(_ sender: Any) {
        if(nameText.text == ""){
            labl2.text = "Please enter your name"
            
        }
        else if (accYoutube.isOn == true && nameText.text == kidName.text) {
            labl2.text = "Allowed ✅"
        }
        else {
            labl2.text =  "Accses Dined ❌"
        }
    }
    
    @IBAction func openMadrasati(_ sender: Any) {
         if(nameText.text == ""){
            lbl3.text = "Please enter your name"
            
        }
        
        else if (accMadrasati.isOn == true && nameText.text == kidName.text) {
            lbl3.text = "Allowed ✅"
        }
   
        else {
            lbl3.text =  "Accses Dined ❌"
        }
        
    }
    
    
    
    
}

