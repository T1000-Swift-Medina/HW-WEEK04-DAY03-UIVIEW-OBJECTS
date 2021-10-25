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
        if (SwitchYoutube.isOn){
            LabelYoutube.text = "Allowed ✅"}
        else {
            LabelYoutube.text = "NotAllowed ❌"
        }
    }
    
    @IBAction func ButtonMadrasti(_ sender: Any) {
        if (SwitchMadrasti.isOn)
        { LabelMadrasti.text = "Allowed ✅"}
        else {
            LabelMadrasti.text = "NotAllowed ❌"
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

