//
//  ViewController.swift
//  C1
//
//  Created by شروق فرج سويلم الحويطي on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var yourname: UITextField!
    
    @IBOutlet weak var statusUnlockPhone: UILabel!
    
    @IBOutlet weak var statusYoutube: UILabel!
    
    @IBOutlet weak var statusMadrasti: UILabel!
    
    @IBOutlet weak var madrastiSwich: UISwitch!
    
    @IBOutlet weak var youtubeSwich: UISwitch!
    
    
    @IBOutlet weak var kidName: UITextField!
    
    
    @IBAction func unlockPhone(_ sender: Any) {
        if (yourname.text == "" || kidName.text == "") {statusUnlockPhone.text = "locked❌"
            return
        }
        
        
        
        if (yourname.text == kidName.text){
            statusUnlockPhone.text = "unlocked✅ "
         
        }else{
            statusUnlockPhone.text = "locked❌"
            
        }
        
        
        
    }
    @IBAction func openYoutube(_ sender: Any) {
        if(youtubeSwich.isOn){
            statusYoutube.text = "Access✅ "
        }else{
            statusYoutube.text = "Access Denied❌"
        }
        
        
        
        
    }
    @IBAction func openMadrasti(_ sender: Any) {
        if(madrastiSwich.isOn){
            statusMadrasti.text = "Allowed✅"
        }else{
            statusMadrasti.text = "Not Allowed❌"
        }
        
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        UserDefaults.standard.set(kidName.text, forKey: "TextName")
        
    }
    
   // @IBOutlet weak var madrastiSwich: UISwitch!
    
   // @IBOutlet weak var youtubeSwich: UISwitch!
    
    
   // @IBOutlet weak var kidName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kidName.delegate = self
        // Do any additional setup after loading the view.
       // UserDefaults.standard.set(youtubeSwich.isOn, forKey: "Youtube")
       // UserDefaults.standard.set(madrastiSwich.isOn,forKey: "Madrasti")
        //UserDefaults.standard.set(kidName.text, forKey: "kidName")
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
    youtubeSwich.isOn = isYoutubeAllowed
        let isMadrastiAllowed = UserDefaults.standard.bool(forKey: "Madrasti")
        madrastiSwich.isOn = isMadrastiAllowed
        
        let iskidName = UserDefaults.standard.string(forKey: "TextName")
        kidName.text = iskidName
        
    }

    @IBAction func onMadrasati(_ sender: Any) {
        UserDefaults.standard.set(madrastiSwich.isOn,forKey: "Madrasti")
    }
  
    
    @IBAction func onYutube(_ sender: Any) {
        UserDefaults.standard.set(youtubeSwich.isOn, forKey: "Youtube")
        
    }
    
//    @IBAction func textkid(_ sender: Any) {
//        UserDefaults.standard.set(kidName.text, forKey: "TextName")
//
//    }
    
}

