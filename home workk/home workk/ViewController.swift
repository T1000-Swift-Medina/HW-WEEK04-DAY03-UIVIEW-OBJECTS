//
//  ViewController.swift
//  home workk
//
//  Created by MAC on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var FullName: UITextField!
    
    @IBOutlet weak var Unlock: UILabel!
    
    @IBOutlet weak var Access: UILabel!
    
    @IBOutlet weak var Allowed: UILabel!
    
    @IBOutlet weak var KidName: UITextField!
    
    @IBOutlet weak var swichmad: UISwitch!
    
    @IBOutlet weak var swichyou: UISwitch!
    
    @IBAction func pHONE(_ sender: Any) {
        if (FullName.text == "Reem"){
            Unlock.text = "Unlock ✅"
        } else {
            Unlock.text = "Not Unlock ❌"
        }
        
    }
    
    
    @IBAction func Open(_ sender: Any) {
        if (FullName.text == "Reem"){
            Access.text = "Access Denied ✅"
        } else {
            Access.text = "Not Access Denied ❌"
        }
    }
    
    
    
    @IBAction func Madrasati(_ sender: Any) {
        if (FullName.text == "Reem"){
            Allowed.text = "Allowed ✅"
        } else {
            Allowed.text = "Not Allowed ❌"
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UserDefaults.standard.set(KidName.text, forKey: "TextName")
    }
    
    @IBAction func onmadrasti(_ sender: Any) {
        UserDefaults.standard.set(swichmad.isOn,forKey: "Madrasti")
        
    }
    
    @IBAction func swichyou(_ sender: Any) {
        UserDefaults.standard.set(swichyou.isOn, forKey: "Youtube")
    }
    
    @IBAction func SwichMD(_ sender: UISwitch) {
        if (KidName.text == "Fars"){
            Allowed.text = "Allowed ✅"
        } else {
            Allowed.text = "Not Allowed ❌"
        }
        
    }
    
    @IBAction func SwichYU(_ sender: Any) {
        if (KidName.text == "Reem"){
            Access.text = "Access Denied ✅"
        } else {
            Access.text = "Not Access Denied ❌"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KidName.delegate = self
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        swichyou.isOn = isYoutubeAllowed
        let isMadrastiAllowed = UserDefaults.standard.bool(forKey: "Madrasti")
        swichmad.isOn = isMadrastiAllowed
        let iskidName = UserDefaults.standard.string(forKey: "TextName")
        KidName.text = iskidName
        
    }
}

