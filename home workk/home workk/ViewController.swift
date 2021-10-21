//
//  ViewController.swift
//  home workk
//
//  Created by MAC on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FullName: UITextField!
    
    @IBOutlet weak var Unlock: UILabel!
    @IBAction func pHONE(_ sender: Any) {
        if (FullName.text == "Reem"){
            Unlock.text = "Unlock ✅"
        } else {
            Unlock.text = "Not Unlock ❌"
        }
    }
    
    @IBOutlet weak var Access: UILabel!
    
    @IBAction func Open(_ sender: Any) {
        if (FullName.text == "Reem"){
            Access.text = "Access Denied ✅"
        } else {
            Access.text = "Not Access Denied ❌"
        }
    }
    @IBOutlet weak var Allowed: UILabel!
    
    
    @IBAction func Madrasati(_ sender: Any) {
        if (FullName.text == "Reem"){
            Allowed.text = "Allowed ✅"
        } else {
            Allowed.text = "Not Allowed ❌"
        }
    
   
}
    
    @IBOutlet weak var KidName: UITextField!
    
    @IBAction func SwichMD(_ sender: UISwitch) {
        if (KidName.text == "Fars"){
            Allowed.text = "Allowed ✅"
        } else {
            Allowed.text = "Not Allowed ❌"
        }
    
        }
    
    @IBAction func SwichYU(_ sender: Any) {
        if (KidName.text == "Reem"){
            Access.text = "Access Denied ✅"
        } else {
            Access.text = "Not Access Denied ❌"
        }
        }
    }
    
    
    

