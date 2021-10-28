//
//  ViewController.swift
//  ParentalControl
//
//  Created by Yazan Alraddadi on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var YourName: UITextField!
    @IBOutlet weak var Greetings:
    UILabel!
    @IBOutlet weak var LabelUnlockPhone: UILabel!
    @IBOutlet weak var LabelYoutube: UILabel!
    @IBOutlet weak var LabelMadrasti: UILabel!
    @IBOutlet weak var ParintalControl: UILabel!
    @IBOutlet weak var AccessMadrasti: UILabel!
    @IBOutlet weak var AccessYoutube: UILabel!
    @IBOutlet weak var WhoCanAccess: UILabel!
    @IBOutlet weak var KidName: UITextField!
    @IBOutlet weak var SwitchMadrasti: UISwitch!
    @IBOutlet weak var SwitchYoutube: UISwitch!
    @IBAction func ButtonPhone(_ sender: Any) {
        UserDefaults.standard.set(YourName.text, forKey: "nameSave")
        
        if YourName.text == "" || KidName.text == "" {
            LabelUnlockPhone.text = "Not Allowed ❌"
            return
            
        }
        
        if YourName.text == KidName.text {
            LabelUnlockPhone.text = "Allowed ✅"}
        else {
            LabelUnlockPhone.text = "Not Allowed ❌"}
        }
    
    
    @IBAction func ButtonYoutube(_ sender: Any) {
        UserDefaults.standard.set(SwitchYoutube.isOn, forKey: "YoutubeSave")
        if (SwitchYoutube.isOn){
            LabelYoutube.text = "Allowed ✅"}
        else {
            LabelYoutube.text = "NotAllowed ❌"
        }
    }
    
    @IBAction func ButtonMadrasti(_ sender: Any) {
        UserDefaults.standard.set(SwitchMadrasti.isOn, forKey: "MadrastiSave")
        if (SwitchMadrasti.isOn)
        { LabelMadrasti.text = "Allowed ✅"}
        else {
            LabelMadrasti.text = "NotAllowed ❌"
        }
    }

    override func viewDidLoad() {
      
        super.viewDidLoad()
        let SaveMadrasti = UserDefaults.standard.bool(forKey: "MadrastiSave")
        SwitchMadrasti.isOn = SaveMadrasti
        let SaveYoutube = UserDefaults.standard.bool(forKey: "YoutubeSave")
        SwitchYoutube.isOn = SaveYoutube
        let SaveNAme = UserDefaults.standard.string(forKey: "nameSave")
        YourName.text = SaveNAme
        // Do any additional setup after loading the view.
    }


}

