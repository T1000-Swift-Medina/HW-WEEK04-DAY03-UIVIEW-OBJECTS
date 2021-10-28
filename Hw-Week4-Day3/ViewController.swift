//
//  ViewController.swift
//  Hw-Week4-Day3
//
//  Created by Abu FaisaL on 13/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var yourName: UITextField!
    
    @IBAction func unlockPhone(_ sender: Any) {
        
        if yourName.text == "" || kidName.text == "" {
            statusUnlock.text = "Not Allowed"
            return
        }
        
        if yourName.text == kidName.text {
            statusUnlock.text = "Allowed"
        }else{ statusUnlock.text = "Not Allowed"
            
        }
    }
    @IBAction func openYouTube(_ sender: Any) {
        
        if (statusSwitchYouTube.isOn){
            statusYouTube.text = "Allowed"
        }else{
             statusYouTube.text = "Not Allowed"
            
        }
            
    }
    @IBAction func madrasti(_ sender: Any) {
        if (statusSwitchMadrasati.isOn){
            statusMadrasati.text = "Allowed"
        }else{
            statusMadrasati.text = "Not Allowed"
        }
    }
    
    @IBOutlet weak var statusUnlock: UILabel!
    @IBOutlet weak var statusYouTube: UILabel!
    @IBOutlet weak var statusMadrasati: UILabel!
    
    @IBOutlet weak var statusSwitchMadrasati: UISwitch!
    @IBOutlet weak var statusSwitchYouTube: UISwitch!
    @IBOutlet weak var kidName: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kidName.delegate = self
        // Do any additional setup after loading the view.
        
        //UserDefaults.standard.set(statusSwitchYouTube.isOn, forKey: "Youtube")
        //UserDefaults.standard.set(statusSwitchMadrasati.isOn, forKey: "Madrasati")

        //UserDefaults.standard.set(kidName.text, forKey: "kidName")
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        statusSwitchYouTube.isOn = isYoutubeAllowed
        
        let isMadrasatiAllowed = UserDefaults.standard.bool(forKey: "Madrasati")
        statusSwitchMadrasati.isOn = isMadrasatiAllowed
        
        let isKidName = UserDefaults.standard.string(forKey: "kidName")
        
        kidName.text = isKidName
        
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        UserDefaults.standard.set(kidName.text, forKey: "kidName")
    }
    
    @IBAction func onSwitchMadrasati(_ sender: Any) {
        
        UserDefaults.standard.set(statusSwitchMadrasati.isOn, forKey: "Madrasati")
    }
    
    @IBAction func onSwichYoutube(_ sender: Any) {
        UserDefaults.standard.set(statusSwitchYouTube.isOn, forKey: "Youtube")
    }
    
//    @IBAction func enterKidName(_ sender: Any) {
//        UserDefaults.standard.set(kidName.text, forKey: "kidName")
//    }
}


