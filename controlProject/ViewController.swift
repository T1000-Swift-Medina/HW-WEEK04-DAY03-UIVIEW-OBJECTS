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

        let myColor = UIColor(red: 123, green: 52, blue: 0, alpha: 1)
        textName.layer.borderColor = myColor.cgColor
    }
    
    
    @IBAction func onClickUnlock(_ sender: UIButton) {
        madrasatiStatus.isHidden = true
        youTubeStatus.isHidden = true
        if userNameTxt.text != "" {
            
            if userNameTxt.text == textName.text {
                statusLable.isHidden = false
                statusLable.text = "Allowed ✅"
                statusLable.textColor = .green
            } else {
                statusLable.text = "Not Allowed ❌"
                statusLable.textColor = .red
            }
        } else {
            statusLable.isHidden = false
            statusLable.text = "Not Allowed ❌"
            statusLable.textColor = .red
        }
    }

    @IBAction func onClickOpenYouTube(_ sender: UIButton) {
        madrasatiStatus.isHidden = true
        statusLable.isHidden = true
        if youTubeSwitch.isOn {
            youTubeStatus.text = "Allowed ✅"
            youTubeStatus.textColor = .green
            youTubeStatus.isHidden = false
        } else {
            youTubeStatus.text = "Not Allowed ❌"
            youTubeStatus.textColor = .red
        }
    }
    
    @IBAction func onClickOpenMadrasati(_ sender: UIButton) {
        statusLable.isHidden = true
        youTubeStatus.isHidden = true
        if (madrasatiSwitch.isOn) {
            madrasatiStatus.text = "Allowed ✅"
            madrasatiStatus.textColor = .green
            madrasatiStatus.isHidden = false
        } else {
            madrasatiStatus.text = "Not Allowed ❌"
            madrasatiStatus.textColor = .red
        }
    }

}

