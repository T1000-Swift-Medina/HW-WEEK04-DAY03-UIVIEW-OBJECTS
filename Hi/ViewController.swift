//
//  ViewController.swift
//  Hi
//
//  Created by Haya on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    let userDefaults = UserDefaults()
    @IBOutlet weak var intrnem: UITextField!
    @IBOutlet weak var nem: UITextField!
    
    
    @IBOutlet weak var hi: UILabel!
    @IBOutlet weak var statusOpen: UILabel!
    @IBOutlet weak var statusYou: UILabel!
    @IBOutlet weak var statusSchool: UILabel!
    
    
    @IBOutlet weak var switchSchool: UISwitch!
    @IBOutlet weak var switchYou: UISwitch!
    @IBAction func SC(_ sender: Any) { UserDefaults.standard.set(switchSchool.isOn, forKey: "School")
   }
    
    @IBAction func yo(_ sender: Any) {
        UserDefaults.standard.set(switchYou.isOn, forKey: "YouTube")
    }
    @IBAction func Open(_ sender: Any) {
        userDefaults.set(nem.text , forKey: "name")

        if (nem.text == intrnem.text && nem.text!.isEmpty == false && intrnem.text!.isEmpty == false){
            statusOpen.text = "افتح الهاتف ✅"
        }
        
        
        else {statusOpen.text = "مغلق"}
    }
    
    @IBAction func YOU(_ sender: Any) {
        UserDefaults.standard.set(switchYou.isOn, forKey: "YouTube")
        if (switchYou.isOn){statusYou.text = "مفتوح✅"}
        else {statusYou.text = "تم الرفض❎ "}
    }
    @IBAction func school(_ sender: Any) {
        UserDefaults.standard.set(switchSchool.isOn, forKey: "School")
        if (switchSchool.isOn){statusSchool.text = "مفتوح✅ "}
        else { statusSchool.text = " مغلق✅"}
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let S = UserDefaults.standard.bool(forKey: "School")
        switchSchool.isOn = S
        
        let y = UserDefaults.standard.bool(forKey: "YouTube")
        switchYou.isOn = y
        
        
        let EnterName = UserDefaults.standard.object(forKey: "name")
        nem.text = EnterName as? String
        
    }
}




