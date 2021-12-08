//
//  ViewController.swift
//  home workk
//
//  Created by MAC on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var FullName: UITextField!
    
    @IBOutlet weak var Unlock: UILabel!
    
    @IBOutlet weak var Access: UILabel!
    
    @IBOutlet weak var Allowed: UILabel!
    
    @IBOutlet weak var KidName: UITextField!
    
    @IBOutlet weak var swichmad: UISwitch!
    
    @IBOutlet weak var swichyou: UISwitch!
    
    @IBAction func pHONE(_ sender: Any) {
        
        if(KidName.text == FullName.text){
              Unlock.text = "Unlocked :white_check_mark:"
              Unlock.textColor = .green
            }else {
              Unlock.text = " not Allowed :x:"
             Unlock.textColor = .red
            }
          }
    
    @IBAction func Open(_ sender: Any) {
        if(swichyou.isOn){
            Access.text = "allow :white_check_mark:"
            Access.textColor = .green
            }else{
                Access.text = "Access Denied :x:"
                Access.textColor = .red
            }
          }


    
    
    @IBAction func Madrasati(_ sender: Any) {
        if(swichmad.isOn){
            Allowed.text =  "allowed :white_check_mark:"
            Allowed.textColor = .green
             }else{
                 Allowed.text = "not allowed :x:"
                 Allowed.textColor = .red
             }
          }
    
    @IBAction func onmadrasti(_ sender: Any) {
        UserDefaults.standard.set(swichmad.isOn,forKey: "Madrasti")
        
    }
    
//    @IBAction func swichyou(_ sender: Any) {
//        UserDefaults.standard.set(swichyou.isOn, forKey: "Youtube")
//    }
    
    @IBAction func SwichMD(_ sender: UISwitch) {
    
        UserDefaults.standard.set(swichmad.isOn,forKey: "Madrasti")
        
    }

    
    @IBAction func SwichYU(_ sender: Any) {
            UserDefaults.standard.set(swichyou.isOn, forKey: "Youtube")
        }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        KidName.delegate = self
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        swichyou.isOn = isYoutubeAllowed
        let isMadrastiAllowed = UserDefaults.standard.bool(forKey: "Madrasti")
        swichmad.isOn = isMadrastiAllowed
        let iskidName = UserDefaults.standard.string(forKey: "TextName")
        KidName.text = iskidName
        
    }
}

