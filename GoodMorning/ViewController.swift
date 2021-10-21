//
//  ViewController.swift
//  GoodMorning
//
//  Created by العــفاف . on 13/03/1443 AH.
// HW

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var switchMad: UISwitch!
    
    @IBOutlet weak var SwitchYOUT: UISwitch!
    @IBOutlet weak var Unlock: UILabel!
    
    @IBOutlet weak var EnterName: UITextField!
    
    @IBAction func PhoneUnlock(_ sender: Any) {
        if (EnterName.text == "Afaf"){
            Unlock.text = "Unlocked ✅"
        } else {
            Unlock.text = "Not Unlocked ❌"
        }
    }
    @IBOutlet weak var AccessD: UILabel!
    
        @IBAction func OpenYouTube(_ sender: Any) {
            if (SwitchYOUT.isOn){
                AccessD.text = "Allowed ✅"
            } else{
                AccessD.text = "Access Denied ❌ "
            }
        }
    
    @IBOutlet weak var Allowed: UILabel!
    
    
    @IBAction func OpenMadrasti(_ sender: Any) {
        if (switchMad.isOn){
        Allowed.text = "Allowed ✅"
    } else {
        Allowed.text = "Not Allowed ❌"
    }
    
    }
    
   
    @IBOutlet weak var AllowMad: UILabel!
    
    @IBOutlet weak var KidName: UITextField!
   

    }
