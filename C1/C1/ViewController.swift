//
//  ViewController.swift
//  C1
//
//  Created by شروق فرج سويلم الحويطي on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourname: UITextField!
    
    @IBOutlet weak var statusUnlockPhone: UILabel!
    
    @IBOutlet weak var statusYoutube: UILabel!
    
    @IBOutlet weak var statusMadrasti: UILabel!
    
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
    @IBOutlet weak var madrastiSwich: UISwitch!
    
    @IBOutlet weak var youtubeSwich: UISwitch!
    
    
    @IBOutlet weak var kidName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

