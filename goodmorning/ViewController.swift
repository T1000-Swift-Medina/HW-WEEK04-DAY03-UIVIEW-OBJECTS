//
//  ViewController.swift
//  goodmorning
//
//  Created by Raghad Alahmadi on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var GmLabel: UILabel!
    @IBOutlet weak var Name: UITextField!
    
   @IBAction func Unlock(_ sender: UISwitch) {
       if Name.text == kidName.text {
           UnLabel.text = "Unlocked "
           }
       else {
           UnLabel.text = "locked "
       }
       
    }
    @IBAction func OpenYotube(_ sender: UISwitch) {
        if switch2.isOn && Name.text == kidName.text  {
            AccessLabel.text = "Access"
          
        }
        else {
            
            AccessLabel.text = "Access Denied"
        }
    }
    @IBAction func OpenMadrasati(_ sender:UISwitch) {
        if (switch1.isOn && Name.text == kidName.text ) {
            AllowLabel.text = "Allowed"
          
        }
        else {
            
            AllowLabel.text = "not Allowed"
        }
        
    }
    
    @IBOutlet weak var UnLabel: UILabel!
   @IBOutlet weak var AccessLabel: UILabel!
    @IBOutlet weak var AllowLabel: UILabel!
   @IBOutlet weak var parental: UITextView!
   @IBOutlet weak var AccessMadrasatiLabel:
    UILabel!
   @IBOutlet weak var AccessYotubeLabel: UILabel!
   @IBOutlet weak var WhoAccess: UILabel!
  @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

