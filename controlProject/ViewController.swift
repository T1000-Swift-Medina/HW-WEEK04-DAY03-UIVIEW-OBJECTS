//
//  ViewController.swift
//  controlProject
//
//  Created by Abdullah Bajaman on 19/10/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var statusLable: UILabel!
    @IBOutlet weak var youTubeStatus: UILabel!
    @IBOutlet weak var madrasatiStatus: UILabel!
    
    
    
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var textName: UITextField!
    
    
    
    @IBOutlet weak var madrasatiSwitch: UISwitch!
    @IBOutlet weak var youTubeSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let myColor = UIColor(red: 25, green: 100, blue: 24, alpha: 1).cgColor // I got differen color
        // border color
        let newColor = UIColor.brown.cgColor
        textName.layer.borderColor = newColor
        textName.layer.borderColor = .some(newColor)
        userNameTxt.layer.borderColor = .some(newColor)
//
        textName.layer.borderWidth = 2
        userNameTxt.layer.borderWidth = 2
        
    }
    
    
    @IBOutlet var onPressForAll: [UIButton]!
    
    @IBAction func onClick(_ sender: UIButton){
        youTubeStatus.isHidden = true
        madrasatiStatus.isHidden = true
        statusLable.isHidden = true
        switch sender.tag {
        case 1:
            statusLable.isHidden = false
            if userNameTxt.text != "" {
                
                if userNameTxt.text == textName.text {
                    statusLable.text = "Allowed ✅"
                    statusLable.textColor = .green
                    
                    userNameTxt.layer.borderColor = UIColor.green.cgColor
                } else {
                    statusLable.text = "Not Allowed ❌"
                    statusLable.textColor = .red
                    userNameTxt.layer.borderColor = UIColor.red.cgColor
                }
            } else {
                
                statusLable.text = "Not Allowed ❌"
                statusLable.textColor = .red
            }
        case 2:
            youTubeStatus.isHidden = false
            if youTubeSwitch.isOn {
                youTubeStatus.text = "Allowed ✅"
                youTubeStatus.textColor = .green
            } else {
                youTubeStatus.text = "Not Allowed ❌"
                youTubeStatus.textColor = .red
            }
            
        case 3:
            madrasatiStatus.isHidden = false
            if (madrasatiSwitch.isOn) {
                madrasatiStatus.text = "Allowed ✅"
                madrasatiStatus.textColor = .green
            } else {
                madrasatiStatus.text = "Not Allowed ❌"
                madrasatiStatus.textColor = .red
            }
        default:
            print(sender.tag)
        }
        
}


}

