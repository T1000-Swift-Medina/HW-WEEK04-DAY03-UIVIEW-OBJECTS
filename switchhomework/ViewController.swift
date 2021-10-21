//
//  ViewController.swift
//  switchhomework
//
//  Created by Roaa aljohani on 14/03/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var unlock: UILabel!
    @IBOutlet weak var denied: UILabel!
    @IBOutlet weak var allowed: UILabel!
    @IBOutlet weak var acessmad: UILabel!
  
    @IBOutlet weak var amadd: UISwitch!
    
 
    @IBOutlet weak var youtubeacess: UISwitch!
    @IBAction func phonepress(_ sender: Any) {
        unlock.text = "Unlocked ✅"
    }
    
   
    @IBAction func youtubepress1(_ sender: Any) {
        if  youtubeacess.isOn{
            denied.text = "access denied ❌"
            youtubeacess.setOn(false, animated: false)
        }
    }
   
    @IBAction func madrastipress(_ sender: Any) {
        allowed.text = "allowed ✅"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    }}

