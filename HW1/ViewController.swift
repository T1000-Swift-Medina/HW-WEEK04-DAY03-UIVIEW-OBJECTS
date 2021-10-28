//
//  ViewController.swift
//  HW1
//
//  Created by Reem Saleh on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var EnterYourName: UITextField!
    

  
    @IBOutlet weak var Accessphone: UILabel!
    
    @IBOutlet weak var AccessYoutube: UILabel!
    
    
    @IBOutlet weak var AccessMadrasti: UILabel!
    
    
    @IBOutlet weak var switchMadrasati: UISwitch!
    
    
    @IBOutlet weak var switchYoutube: UISwitch!
    
    @IBOutlet weak var TextFiled2: UITextField!
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UserDefaults.standard.set(TextFiled2.text, forKey: "Name")
    }
    @IBAction func UnlockPhone(_ sender: Any)
    {
        if(TextFiled2.text == EnterYourName.text)
        {Accessphone.text = "Allowed ✅"
            Accessphone.textColor = .green
        }
        else{Accessphone.text = "Not Allowed❌"
            Accessphone.textColor = .red
        }
    }
    
    @IBAction func OpenYoutube(_ sender: Any) {
        if(switchYoutube.isOn){AccessYoutube.text = "Allowed ✅"
            AccessYoutube.textColor = .green
        }
        
            else{ AccessYoutube.text = "Access Denied  ❌"
                AccessYoutube.textColor = .red
        }
        
        
        
        
    }
    @IBAction func OpenMadrasti(_ sender: Any) {
        
            if(switchMadrasati.isOn){AccessMadrasti.text = "Allowed ✅"
                AccessMadrasti.textColor = .green
            }
        else{
            AccessMadrasti.text = "Not Allowed❌ "
            AccessMadrasti.textColor = .red
        }
        
    }
    
  
    
    @IBAction func switchMadrasti(_ sender: Any) {
        UserDefaults.standard.set(switchMadrasati.isOn, forKey: "Madrasati")
        
    }
    
    @IBAction func switchYoutube(_ sender: Any) {
        UserDefaults.standard.set(switchYoutube.isOn, forKey: "youtube")
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextFiled2.delegate = self
        TextFiled2.text = UserDefaults.standard.string(forKey: "Name")
       
//        UserDefaults.standard.set(EnterYourName.text, forKey: "Name")
        
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "youtube")
        switchYoutube.isOn = isYoutubeAllowed
        let isMad = UserDefaults.standard.bool(forKey: "Madrasati")
        switchMadrasati.isOn = isMad
        
      
    
    
    }

}

