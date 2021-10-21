//
//  ViewController.swift
//  GoodMorning
//
//  Created by العــفاف . on 13/03/1443 AH.
// HW

import UIKit

class ViewController: UIViewController {

    
    
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
            if (EnterName.text == "Afaf"){
                AccessD.text = "Allowed ✅"
            } else{
                AccessD.text = "Access Denied ❌ "
            }
        }
    
    @IBOutlet weak var Allowed: UILabel!
    @IBAction func OpenMadrasti(_ sender: Any) {
    if (EnterName.text == "Afaf"){
        Allowed.text = "Allowed ✅"
    } else {
        Allowed.text = "Not Allowed ❌"
    }
    
    }
    
   
    @IBOutlet weak var AllowMad: UILabel!
    
    @IBOutlet weak var KidName: UITextField!
   
    
    
    
    @IBAction func AccMAD(_ sender: Any) {
        if(KidName.text == "Jawana"){
            Allowed.text = "Allowed ✅"
        } else {
            Allowed.text = "Not Allowed ❌"
        }
        
        }
    
    @IBAction func AccYT(_ sender: Any) {
        if (KidName.text == "Jawana"){
            AccessD.text = "Allowed ✅"
        } else{
            AccessD.text = "Access Denied ❌ "
        }
        }
    }
