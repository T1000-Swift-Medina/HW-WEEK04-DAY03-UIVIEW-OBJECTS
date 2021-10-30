import UIKit


class ViewController: UIViewController,UITextFieldDelegate {
    
    let userDefaults = UserDefaults()
    
    
    @IBOutlet weak var GmLabel: UILabel!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var UnLabel: UILabel!
    @IBOutlet weak var AccessLabel: UILabel!
    @IBOutlet weak var AllowLabel: UILabel!
    @IBOutlet weak var parental: UITextView!
    @IBOutlet weak var AccessMadrasatiLabel:UILabel!
    @IBOutlet weak var AccessYotubeLabel: UILabel!
    @IBOutlet weak var WhoAccess: UILabel!
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    
    
    
    @IBAction func Unlock(_ sender: UIButton) {
        
        if Name.text == kidName.text {
            UnLabel.text = "Unlocked "
        }
        else {
            UnLabel.text = "locked " }
    }
    @IBAction func OpenYotube(_ sender: UISwitch) {
        
        
        
        
        if switch2.isOn && Name.text == kidName.text  {
            AccessLabel.text = "Access"}
        
        else { AccessLabel.text = "Access Denied"}
    }
    @IBAction func OpenMadrasati(_ sender:UISwitch) {
        
        
        if (switch1.isOn && Name.text == kidName.text ) {
            AllowLabel.text = "Allowed"
        }
        else {       AllowLabel.text = "not Allowed" }  }
    
    
    
    @IBAction func nameDefault(_ sender: Any) {
        let nameSave = Name.text
        userDefaults.set(nameSave, forKey: "nameSave")
        
    }
    
//    @IBAction func kidNameDefault(_ sender: Any) {
//        let kidNameSave = kidName.text
//        userDefaults.set(kidNameSave, forKey: "kidNameSave")
//        
//     
//    }
    
    
    @IBAction func Mswitch(_ sender: Any) {
        let madrasati = switch1.isOn
        userDefaults.set(madrasati, forKey: "madrastiSave")
        
    }
    
    @IBAction func Yswitch(_ sender: Any) {
        let youtube = switch2.isOn
        userDefaults.set(youtube, forKey: "yotubeSave") }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        switch2.setOn(userDefaults.bool(forKey: "yotubeSave"), animated: true)
        
        switch1.setOn(userDefaults.bool(forKey: "madrastiSave"), animated: true)
        
        Name.text = userDefaults.string(forKey: "nameSave")
        
        
//        kidName.text = userDefaults.string(forKey: "kidNameSave")
        
        
   
        
   
    


    }
    
    
}


