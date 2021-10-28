//
//  ViewController.swift
//  HW4
//
//  Created by لمى فرحان on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var name1: UITextField!
    
    @IBOutlet weak var phone: UILabel!
    
    @IBOutlet weak var youtube: UILabel!
    
    @IBOutlet weak var madrasati: UILabel!
    
    
    @IBOutlet weak var switch_madrasati: UISwitch!
    
    @IBOutlet weak var switch_youtube: UISwitch!
    
    
    @IBOutlet weak var name_kid: UITextField!
    
    
    @IBAction func phone_button(_ sender: Any) {
        
        if(name_kid.text == name1.text){
            
            phone.text = "unlocked ✅"
            phone.textColor = .green
            
            
        }else {
            
            phone.text = "lock ❌"
            phone.textColor = .red
            
        }
        
        
        
        
        
    }
    
    
    @IBAction func youtube_button(_ sender: Any) {
        
        if(switch_youtube.isOn){
            
            youtube.text = "Allowed✅"
            youtube.textColor = .green
            
        }else {
            youtube.text = "not Allowed❌"
            youtube.textColor = .red
        }
        
        
        
    }
    
    
    
    @IBAction func madrasati_button(_ sender: Any) {
        
        if(switch_madrasati.isOn){
            madrasati.text = "Allowed✅"
            madrasati.textColor = .green
            
            
        }else {
            madrasati.text = "Not Allowed❌"
            madrasati.textColor = .red
            
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UserDefaults.standard.set(name_kid.text,  forKey: "name")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        name_kid.delegate = self
        
        name_kid.text = UserDefaults.standard.string(forKey: "name")
        
        
//        UserDefaults.standard.set(switch_madrasati.isOn, forKey: "madrasati")
//        UserDefaults.standard.set(name1.text, forKey: "name")
        let isyoutubeAllowed = UserDefaults.standard.bool(forKey: "youtube")
        switch_youtube.isOn = isyoutubeAllowed
        
        let ismadrasatiAllowed = UserDefaults.standard.bool(forKey: "madrasati")
       switch_madrasati.isOn = ismadrasatiAllowed
    }

    @IBAction func onswitchmadrasti(_ sender: Any) {
        UserDefaults.standard.set(switch_madrasati.isOn, forKey: "madrasati")

        
    }
    @IBAction func onSwitchYoutube(_ sender: Any) {
        UserDefaults.standard.set(switch_youtube.isOn,  forKey: "youtube")
        print(UserDefaults.standard.bool(forKey: "youtube"))
        
        
    }
    
}

