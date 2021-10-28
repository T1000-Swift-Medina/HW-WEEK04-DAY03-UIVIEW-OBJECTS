//
//  ViewController.swift
//  HomeWork
//
//  Created by mohammad.alsharif on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let userDefaults = UserDefaults()
    
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var madrasati: UISwitch!
    @IBOutlet weak var youtube: UISwitch!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yourName.text = userDefaults.string(forKey: "Mohammed")
        youtube.isOn = userDefaults.bool(forKey:"Youtube")
        madrasati.isOn = userDefaults.bool(forKey:"Madrasa")
        kidName.text = userDefaults.string(forKey: "Mohammed")

    }
    
    @IBAction func unlockPhone(_ sender: UIButton) {
        
        userDefaults.set(yourName.text, forKey: "Mohammed")
        
        if yourName.text == kidName.text {
            lbl.text = "Unlocked ✅"
        } else {
            lbl.text = "Not Allowed ❌"
        }
    }
    
    @IBAction func openYoutube(_ sender: UIButton) {
        
        userDefaults.set(youtube.isOn, forKey: "Youtube")
        
        if youtube.isOn == true {
            lbl2.text = "Allowed ✅"
        } else {
        lbl2.text = "Not Allowed ❌"
        }
    }
    
    @IBAction func openMadrasati(_ sender: UIButton) {
        
        userDefaults.set(madrasati.isOn, forKey: "Madrasa")
        
        if madrasati.isOn == true {
            lbl3.text = "Allowed ✅"
            
        } else {
            lbl3.text = "Not Allowed ❌"
        }
    }

}
