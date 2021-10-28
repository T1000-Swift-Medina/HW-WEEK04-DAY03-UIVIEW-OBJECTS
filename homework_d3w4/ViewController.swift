//
//  ViewController.swift
//  homework_d3w4
//
//  Created by Osama folta on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textinput1: UITextField!
    @IBOutlet weak var textinput2: UITextField!
    @IBOutlet weak var labl1: UILabel!
    @IBOutlet weak var swtch1: UISwitch!
    @IBOutlet weak var swtch2: UISwitch!
    @IBOutlet weak var labl2: UILabel!
    @IBOutlet weak var labl3: UILabel!
    @IBAction func unlok(_ sender: Any)
    {
        UserDefaults.standard.set(textinput2.text, forKey: "name2")
        if textinput1.text == "" ||  textinput2.text == "" {
            labl1.text = "Not Allowed 🚫"
               return
        }
        
        if textinput1.text == textinput2.text
        {  labl1.text = "Allowed ✅"}
        else { labl1.text = "Not Allowed 🚫"}
    }
    
    @IBAction func yotub(_ sender: Any) {
        UserDefaults.standard.set(swtch1.isOn, forKey: "yottub")
        if swtch1.isOn == true {
            labl2.text = "Allowed ✅"}
        else { labl2.text = "Not Allowed 🚫"}
    }
    @IBAction func mdrsa(_ sender: Any) {
       UserDefaults.standard.set(swtch2.isOn, forKey: "mdrsaa")

        if swtch2.isOn == true {
            labl3.text = "Allowed ✅"
        }
        else { labl3.text = "Not Allowed 🚫"
        }
    }
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view.

//        UserDefaults.standard.set(textinput2.text, forKey: "AlowedName")
 
        let madrsaState = UserDefaults.standard.bool(forKey: "mdrsaa")
        swtch2.isOn = madrsaState
        let youState = UserDefaults.standard.bool(forKey: "yottub")
        swtch1.isOn = youState
        
        let nameState = UserDefaults.standard.string(forKey: "name2")
        textinput2.text = nameState
    }


}

