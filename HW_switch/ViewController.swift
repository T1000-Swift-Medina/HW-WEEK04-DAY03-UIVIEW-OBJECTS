//
//  ViewController.swift
//  HW_switch
//
//  Created by نجود  on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var access_Phone: UILabel!
    
    
    @IBOutlet weak var accessYoutube: UILabel!
    
    @IBOutlet weak var access_Youtube: UISwitch!
    
    
    
    @IBOutlet weak var accessMadrasati: UILabel!
    @IBOutlet weak var sccess_Madrasati: UISwitch!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var kidName: UITextField!
    
    
    
    
    //phone--------------------------------------------
    
    @IBAction func phone(_ sender: Any) {
        
        if(kidName.text == name.text){
            access_Phone.text = "Unlocked ✅"
            access_Phone.textColor = .green
            
        }else {
            access_Phone.text = " not Allowed ❌"
            access_Phone.textColor = .red
        }
        
    }
    //youtube--------------------------------
    
    @IBAction func youtube(_ sender: Any) {
       
        if(access_Youtube.isOn){
            accessYoutube.text = "allow ✅"
           accessYoutube.textColor = .green
        }else{
            
           accessYoutube.text = "Access Denied  ❌"
            accessYoutube.textColor = .red
        }
    }
    //Madrasati-----------------------------------------------------
    
    @IBAction func Open_madrasati(_ sender: Any) {
        
        
         if(sccess_Madrasati.isOn){
            accessMadrasati.text = "allowed ✅"
           accessMadrasati.textColor = .green
         }else{
             
            accessMadrasati.text = "not allowed  ❌"
             accessMadrasati.textColor = .red
         }
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

