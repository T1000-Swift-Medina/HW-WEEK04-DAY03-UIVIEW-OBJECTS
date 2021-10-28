//
//  ViewController.swift
//  HW-3
//
//  Created by Yousef Alasmar on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var txtName2: UITextField!
    
    @IBAction func button1(_ sender: Any) {
        
        UserDefaults.standard.set(txtName2.text, forKey: "Name")
        
        if txtName.text == txtName2.text {
        label1.text = "Allowed ✅"
    }else{
        label1.text = "Not Allowed ❌"
        }
    }
    @IBAction func button2(_ sender: Any) {
        
        UserDefaults.standard.set(switch1.isOn, forKey: "Youtube")
        
        if (switch1.isOn) {
            label2.text = "Allowed ✅"
        }else{
            label2.text = "Not Allowed ❌"
        }
    }
    @IBAction func button3(_ sender: Any) {
        
        UserDefaults.standard.set(switch2.isOn, forKey: "Madrasati")
        
        if (switch2.isOn) {
            label3.text = "Allowed ✅"
        }else{
            label3.text = "Not Allowed ❌"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        switch1.isOn = isYoutubeAllowed
        
        let isMadrasati = UserDefaults.standard.bool(forKey: "Madrasati")
        switch2.isOn = isMadrasati
        
        let saveName = UserDefaults.standard.string(forKey: "Name")
        txtName2.text = saveName

       
        

    }

}

