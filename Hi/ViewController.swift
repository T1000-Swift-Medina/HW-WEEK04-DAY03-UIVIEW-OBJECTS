//
//  ViewController.swift
//  Hi
//
//  Created by Haya on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var intrnem: UITextField!
    @IBOutlet weak var nem: UITextField!
    
    
    @IBOutlet weak var hi: UILabel!
    @IBOutlet weak var statusOpen: UILabel!
    @IBOutlet weak var statusYou: UILabel!
    @IBOutlet weak var statusSchool: UILabel!
    
    
    @IBOutlet weak var switchSchool: UISwitch!
    @IBOutlet weak var switchYou: UISwitch!
    
    
    @IBAction func Open(_ sender: Any) {
        if (nem.text == intrnem.text && nem.text!.isEmpty == false && intrnem.text!.isEmpty == false){
            statusOpen.text = "افتح الهاتف ✅"
        }
        
        
        else {statusOpen.text = "مغلق"}
    }
    
    @IBAction func YOU(_ sender: Any) {
        if (switchYou.isOn){statusYou.text = "مفتوح✅"}
        else {statusYou.text = "تم الرفض❎ "}
    }
    @IBAction func school(_ sender: Any) {
        if (switchSchool.isOn){statusSchool.text = "مفتوح✅ "}
        else { statusSchool.text = " مغلق✅"}
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hi.text = "اهلا بك "
        intrnem.text = "ادخل اسم المستخدم "
        
        //
        //
        
    }
}




