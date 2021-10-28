//
//  ViewController.swift
//  W4-day3
//
//  Created by Mohammed Mabruk on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var textName1: UITextField!
    @IBOutlet weak var textName2: UITextField!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var lable3: UILabel!
    @IBOutlet weak var switchM: UISwitch!
    @IBOutlet weak var switchY: UISwitch!
    
    @IBAction func butten1(_ sender: Any){
        UserDefaults.standard.set(textName1.text,forKey: "name1")
        UserDefaults.standard.set(textName2.text,forKey: "name2")
        
        if textName1.text == textName2.text{
            lable1.text = "Unlucked✅"}
        
        else {
            lable1.text = "Locked❌"}
        
    }
    
    @IBAction func buteen2(_ sender: Any) {
        UserDefaults.standard.set(switchM.isOn,forKey: "Madrasati")
   

        if (switchM.isOn){lable2.text = "Access Denied❌"
        } else{lable2.text = "Access✅"}
    }
    
    @IBAction func buteen3(_ sender: Any){
       
        
        UserDefaults.standard.set(switchY.isOn,forKey: "Youtube")
      
        if (switchY.isOn){
            lable3.text = "Allowed✅"
        } else { lable3.text = "Not Allowed❌"}
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        let isMadrasatiAllowed = UserDefaults.standard.bool(forKey: "Madrasati")
        let labelF = UserDefaults.standard.string(forKey: "name1")
        let labelS = UserDefaults.standard.string(forKey: "name2")
        switchY.isOn = isYoutubeAllowed
        switchM.isOn = isMadrasatiAllowed
        textName1.text = labelF
        textName2.text = labelS

        // Do any additional setup after loading the view.
    }
    
    
}



