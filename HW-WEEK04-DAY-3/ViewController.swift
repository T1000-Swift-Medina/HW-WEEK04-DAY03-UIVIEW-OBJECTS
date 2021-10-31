

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
        
        //Reading User Defualt Data
        
             let youtupeDefualt = UserDefaults.standard.bool(forKey: "Youtupe")
                  accYoutube.isOn = youtupeDefualt

             let name = UserDefaults.standard.string(forKey: "name1")
                  nameText.text = name
        
             let madrastiDefualt = UserDefaults.standard.bool(forKey: "madrasti")
                accMadrasati.isOn = madrastiDefualt

    }
    
    
    @IBAction func unlock(_ sender: Any) {
        //Setting User Defualt Data

        UserDefaults.standard.set(nameText.text, forKey: "name1")

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
        //Setting User Defualt Data

        UserDefaults.standard.set(accYoutube.isOn, forKey: "Youtupe")

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
        //Setting User Defualt Data

        UserDefaults.standard.set(accMadrasati.isOn, forKey: "madrasti")
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

