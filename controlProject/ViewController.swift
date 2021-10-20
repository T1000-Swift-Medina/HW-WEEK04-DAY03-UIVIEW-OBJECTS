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

//        let myColor = UIColor(red: 123, green: 52, blue: 0, alpha: 1).cgColor
        // border color
        let newColor = UIColor.red.cgColor
        textName.layer.borderColor = newColor
        userNameTxt.layer.borderColor = newColor
        
        textName.layer.borderWidth = 2
        userNameTxt.layer.borderWidth = 2
//        textName.clipsToBounds = true
        textName.borderStyle = .roundedRect
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
                } else {
                    statusLable.text = "Not Allowed ❌"
                    statusLable.textColor = .red
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

