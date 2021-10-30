//
//  ViewController.swift
//  KidAccess
//
//  Created by Rahaf Abdulaal on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PhoneLabel: UILabel!
    @IBOutlet weak var YoutubeLabel: UILabel!
    @IBOutlet weak var MadrastiLabel: UILabel!
    @IBOutlet weak var NameLabel: UITextField!
    @IBOutlet weak var KidName: UITextField!
    @IBOutlet weak var accMadrasati: UISwitch!
    @IBOutlet weak var accYoutube: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let Youtube = UserDefaults.standard.bool(forKey: "Youtube")
        accYoutube.isOn = Youtube
        let Madrasa = UserDefaults.standard.bool(forKey: "Madrasati")
        accMadrasati.isOn = Madrasa
        let YourName = UserDefaults.standard.string(forKey: "Rahaf")
        NameLabel.text = YourName
        
    }
    @IBAction func UnlockPhone(_ sender: Any) {
        UserDefaults.standard.set(NameLabel.text , forKey: "Rahaf")

        if(NameLabel.text == ""){
            print("Enter Your Name")
        } else if (NameLabel.text == KidName.text) {
            PhoneLabel.text = "Unlocked ✅"
        }else {
            PhoneLabel.text = "Locked ❌"
        }
    }
    @IBAction func UnlockYoutube(_ sender: Any) {
        UserDefaults.standard.set(accYoutube.isOn, forKey: "Youtube")

        if(NameLabel.text == ""){
            YoutubeLabel.text = "Enter Your Name"
        } else if (accYoutube.isOn == true && NameLabel.text == KidName.text) {
            YoutubeLabel.text = "Unlocked ✅"
        }else {
            YoutubeLabel.text = "Locked ❌"
        }
    }
    @IBAction func UnlockMadrasati(_ sender: Any) {
        UserDefaults.standard.set(accMadrasati.isOn, forKey: "Madrasati")

        if(NameLabel.text == ""){
            MadrastiLabel.text = "Enter Your Name"
        } else if (accYoutube.isOn == true && NameLabel.text == KidName.text) {
            MadrastiLabel.text = "Unlocked ✅"
        }else {
            MadrastiLabel.text = "Locked ❌"
        }
    }
}

