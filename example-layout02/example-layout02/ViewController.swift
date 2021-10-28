
import UIKit

class ViewController: UIViewController , UITextViewDelegate {
    /*TextField*/
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var enterKidName: UITextField!
    
    /*Label*/
    @IBOutlet weak var statusUnlockPhone: UILabel!
    @IBOutlet weak var statusOpenXcode: UILabel!
    @IBOutlet weak var statusYoutube: UILabel!
    @IBOutlet weak var statusNetflix: UILabel!
    
    /*switch*/
    @IBOutlet weak var switchForXcode: UISwitch!
    @IBOutlet weak var switchForYoutube: UISwitch!
    @IBOutlet weak var switchForNetflix: UISwitch!
    
    /*button*/
    @IBAction func unlockPhone(_ sender: Any) {
        
        if(kidName.text == "" || enterKidName.text == ""){
            statusUnlockPhone.text = "Access Denied ❌"
            statusUnlockPhone.textColor = .red
        }
        else if (kidName.text == enterKidName.text){
            statusUnlockPhone.text = "unlocked ✅"
            statusUnlockPhone.textColor = .green
        }else{
            statusUnlockPhone.text = "Access Denied ❌"
            statusUnlockPhone.textColor = .red
        }
    }
    
    @IBAction func youtubeButton(_ sender: Any) {
        
        if(switchForYoutube.isOn == true){statusYoutube.text = "Time for some video..🎭"
            statusYoutube.textColor = .green
        }
        else{statusYoutube.text = "No Access for now ☹️"
            statusYoutube.textColor = .red
        }
        
    }
    
    
    @IBAction func XcodeButton(_ sender: Any) {
        
        if (switchForXcode.isOn == true){statusOpenXcode.text = "Time For Codeing..!!👨🏽‍💻"
            statusOpenXcode.textColor = .green
        }
        else{statusOpenXcode.text = "Take break ... 🧘🏽"
            statusOpenXcode.textColor = .red
        }
    }
    @IBAction func netflixButton(_ sender: Any) {
        
        if(switchForNetflix.isOn){statusNetflix.text = "Movie Time 🍿"
            statusNetflix.textColor = .green
        }
        else{statusNetflix.text = "No Access for now ☹️"
            statusNetflix.textColor = .red
        }
    }
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(switchForXcode.isOn, forKey: "Xcode")
        UserDefaults.standard.set(switchForYoutube.isOn, forKey: "youtube")
        UserDefaults.standard.set(switchForNetflix.isOn, forKey: "netflix")
        UserDefaults.standard.set(kidName.text, forKey: "kidName")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isXcodeAllowed = UserDefaults.standard.bool(forKey: "Xcode")
        switchForXcode.isOn = isXcodeAllowed
        
        let isYoutubeAllowed = UserDefaults.standard.bool(forKey: "youtube")
        switchForYoutube.isOn = isYoutubeAllowed
        
        let isNetflixAllowed = UserDefaults.standard.bool(forKey: "netflix")
        switchForNetflix.isOn = isNetflixAllowed
        
        let isKidNameAllowed = UserDefaults.standard.object(forKey: "kidName")
        kidName.text = isKidNameAllowed as? String
        
        
        
        
    }
}

