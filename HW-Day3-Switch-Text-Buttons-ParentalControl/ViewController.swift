//
//  ViewController.swift
//  HW-Day3-Switch-Text-Buttons-ParentalControl
//
//  Created by khalid ali on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func onclick(_ sender: Any) {
        UserDefaults.standard.set(Switch1.isOn, forKey: "Madrasati")

    }
    
    @IBAction func onPress(_ sender: Any) {
        UserDefaults.standard.set(Switch2.isOn, forKey: "Youtube")

    }
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var Switch1: UISwitch!
    @IBOutlet weak var Switch2: UISwitch!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameTextField2: UITextField!
    
    @IBAction func unlockPhone(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField2.text, forKey: "Khalid")

        
        if (nameTextField.text == nameTextField2.text) {
            label1.text = "Allowed ✅"
            
        }else {
            label1.text = "Not Allowed ❌"
        }
        

    }
    
    @IBAction func OpenYoutube(_ sender: Any) {
        

        if (Switch2.isOn == true) {
            label2.text = "Allowed ✅"
        }else {
            label2.text = "Not Allowed ❌"
        }
        
    }
    
    @IBAction func OpenMadrasati(_ sender: Any) {
        

        
        if (Switch1.isOn == true) {
            label3.text = "Allowed ✅"
        }else {
            label3.text = "Not Allowed ❌"
        }
        

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        Switch2.isOn = isYoutubeAllowed
        
        let isMadrasatiAllowed = UserDefaults.standard.bool(forKey: "Madrasati")
        Switch1.isOn = isMadrasatiAllowed
        
        let isnameTextFieldAllowed = UserDefaults.standard.string(forKey: "Khalid")
        nameTextField2.text = isnameTextFieldAllowed
        
    }


}

