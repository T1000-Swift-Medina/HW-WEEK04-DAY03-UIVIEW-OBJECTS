//
//  ViewController.swift
//  Afnan_HW
//
//  Created by Afnan Theb on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameUser: UITextField!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTow: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var switchYoutube: UISwitch!
    @IBOutlet weak var switchMadrasati: UISwitch!
    
    @IBOutlet weak var nameKid: UITextField!
    
    @IBAction func unlockPhone(_ sender: Any) {
        if (nameKid.text == "" || nameUser.text == "")
        { labelOne.text = "Access Denied"
         
            
        }else {
        if (nameKid.text == nameUser.text)
        {
            labelOne.text = "Allowed"
        }else {
            labelOne.text = "Access Denied"
        }
    }
    }
    
    @IBAction func openYoutube(_ sender: Any) {
        if (switchYoutube.isOn)
        {
            labelTow.text = "Allowed"
        }else {
            labelTow.text = "Access Denied"
        }
    }
    
    @IBAction func openMadrasati(_ sender: Any) {
        if (switchMadrasati.isOn)
        {
            labelThree.text = "Allowed"
        }else {
            labelThree.text = "Access Denied"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

