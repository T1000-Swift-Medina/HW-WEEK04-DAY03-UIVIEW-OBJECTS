//
//  ViewController.swift
//  HomeWork
//
//  Created by mohammad.alsharif on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var madrasati: UISwitch!
    @IBOutlet weak var youtube: UISwitch!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unlockPhone(_ sender: UIButton) {
        
        if yourName.text == kidName.text {
            lbl.text = "Unlocked ✅"
        } else {
            lbl.text = "Not Allowed ❌"
        }
    }
    
    @IBAction func openYoutube(_ sender: UIButton) {
        if youtube.isOn {
            lbl2.text = "Allowed ✅"
        } else {
        lbl2.text = "Not Allowed ❌"
        }
    }
    @IBAction func openMadrasati(_ sender: UIButton) {
        if madrasati.isOn {
            lbl3.text = "Allowed ✅"
        } else {
            lbl3.text = "Not Allowed ❌"
        }
    }
}
