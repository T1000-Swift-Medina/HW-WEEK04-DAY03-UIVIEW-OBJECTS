//
//  ViewController.swift
//  UIView
//
//  Created by Nojoud Mohaimmed on 15/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var statusUnlock: UILabel!
    @IBOutlet weak var statusYoutube: UILabel!
    @IBOutlet weak var statusMad: UILabel!
    @IBOutlet weak var youtubeSwitch: UISwitch!
    @IBOutlet weak var madSwitch: UISwitch!
    
    @IBAction func unlockPhone(_ sender: Any) {
        if (enterName.text == kidName.text){
            statusUnlock.text = "Unlocked🔓"
            statusUnlock.textColor = .blue
        }else{
            statusUnlock.text = "Locked🔒"
            statusUnlock.textColor = .red
        }
    }
    @IBAction func openYoutube(_ sender: Any) {
        if (youtubeSwitch.isOn){
            statusYoutube.text = "Allowed✅"
            statusYoutube.textColor = .blue
        }else{
            statusYoutube.text = "Not Allowed ❌"
            statusYoutube.textColor = .red
        }
    }
    @IBAction func openMad(_ sender: Any) {
        if (madSwitch.isOn){
            statusMad.text = "Allowed✅"
            statusMad.textColor = .blue
        }else{
            statusMad.text = "Not Allowed ❌"
            statusMad.textColor = .red
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

