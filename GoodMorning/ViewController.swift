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
    @IBOutlet weak var AllowMad: UILabel!
    @IBOutlet weak var KidName: UITextField!
   
    
    @IBAction func PhoneUnlock(_ sender: Any) {
        
        UserDefaults.standard.set(KidName.text, forKey: "Name")
        
        if (EnterName.text == "Afaf"){
            Unlock.text = "Unlocked ✅"
        } else {
            Unlock.text = "Not Unlocked ❌"
        }
    }
    @IBOutlet weak var AccessD: UILabel!
    
        @IBAction func OpenYouTube(_ sender: Any) {
            
            UserDefaults.standard.set(SwitchYOUT.isOn, forKey: "YouTupe")
            
            if (SwitchYOUT.isOn){
                AccessD.text = "Allowed ✅"
            } else{
                AccessD.text = "Access Denied ❌ "
            }
        }
    
    @IBOutlet weak var Allowed: UILabel!
    
    
    @IBAction func OpenMadrasti(_ sender: Any) {
        
        UserDefaults.standard.set(switchMad.isOn, forKey: "Madrasa")
        
        if (switchMad.isOn){
        Allowed.text = "Allowed ✅"
    } else {
        Allowed.text = "Not Allowed ❌"
    }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        //UserDefaults.standard.set(SwitchYOUT.isOn, forKey: "YouTupe")
      //  UserDefaults.standard.set(switchMad.isOn, forKey: "Madrasa")
    //    UserDefaults.standard.set(KidName.text, forKey: "Jwana")
       
        let isYouTupAllowed = UserDefaults.standard.bool(forKey: "YouTupe")
        SwitchYOUT.isOn = isYouTupAllowed
        
        let  isMadrasaAllowed = UserDefaults.standard.bool(forKey: "Madrasa")
        SwitchYOUT.isOn = isMadrasaAllowed
        
        let isName = UserDefaults.standard.object(forKey: "Name")
        KidName.text = isName as? String
        //isname.text = as? String
        
    }

    }
