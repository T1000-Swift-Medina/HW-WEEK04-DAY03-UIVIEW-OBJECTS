import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    var isLocked = true
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var lableYoutube: UILabel!
    @IBOutlet weak var lableMadrasati: UILabel!
    @IBOutlet weak var textFildeKidsName: UITextField!
    @IBOutlet weak var SwitchMadrasti: UISwitch!
    @IBOutlet weak var SwitchYoutube: UISwitch!
    

    @IBAction func unlockPhone(_ sender: Any) {
 
        UserDefaults.standard.set(textFildeKidsName.text, forKey: "KidsName")

        textField.text = textField.text?.trimmingCharacters(in: .whitespaces)
        textFildeKidsName.text = textFildeKidsName.text?.trimmingCharacters(in: .whitespaces)

//        if (textField.text != textFildeKidsName.text || textFildeKidsName.text!.isEmpty == true || textField.text!.isEmpty == true) {
//            labelPhone.text = "  Not Allowed ❌ "
//
//       }
        
        if (textField.text == "" || textFildeKidsName.text == "") {
            labelPhone.text = "  Not Allowed ❌ "
            return
        }
        
        if (textFildeKidsName.text == textField.text) {
            print("Allowd")
            labelPhone.text = " Allowed ✅ "
        }
    }
    @IBAction func openYoutube(_ sender: Any) {
        UserDefaults.standard.set(SwitchYoutube.isOn, forKey: "Youtube")
        
        if (SwitchYoutube.isOn == true) {
            
            lableYoutube.text = " Allowed ✅ "
            }else{
                lableYoutube.text = " Not Allowed ❌ "
            }
        }
    @IBAction func openMadasti(_ sender: Any) {
       
        UserDefaults.standard.set(SwitchMadrasti.isOn, forKey: "Madrasti")
        if (SwitchMadrasti.isOn == true) {
            lableMadrasati.text = " Allowed ✅ "
        }else{
            lableMadrasati.text = " Not Allowed ❌ "
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "Youtube")
        SwitchYoutube.isOn = isYoutubeAllowed
        
        let isMadrssati = UserDefaults.standard.bool(forKey: "Madrasti")
        SwitchMadrasti.isOn = isMadrssati
        
        let istextFelid = UserDefaults.standard.string(forKey: "KidsName")
        textFildeKidsName.text = istextFelid
    }
    
    
    
}

