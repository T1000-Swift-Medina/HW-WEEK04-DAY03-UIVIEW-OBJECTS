import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Ns1: UILabel!
    @IBOutlet weak var Ns2: UILabel!
    @IBOutlet weak var Ns3: UILabel!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Name2: UITextField!
    @IBOutlet weak var Swich1: UISwitch!
    @IBOutlet weak var Swich2: UISwitch!
    
    @IBAction func Baton(_ sender: Any) {
        UserDefaults.standard.set(Name2.text, forKey: "Name")

        
        if Name.text == Name2.text {
            if Name.text == "Bnder" {
            Ns1.text = "Bnder🔐✅"
            Ns1.textColor = .green
            } else {Ns1.text = "🔒❌"
                Ns1.textColor = .red
                
            }
        }else {Ns1.text = "🔒❌"
            Ns1.textColor = .red
            
        }
    }
    @IBAction func baton2(_ sender: Any) {
        UserDefaults.standard.set(Swich2.isOn, forKey: "YouTube")
      
        if (Swich2.isOn){
            Ns2.text = "🔐✅"
//            Ns2.textColor = .green
        }else{
            Ns2.text = "🔒❌"
//            Ns2.textColor = .red
        }
    }
    @IBAction func Baton3(_ sender: Any) {
        UserDefaults.standard.set(Swich1.isOn, forKey: "School")

        if (Swich1.isOn){
            Ns3.text = "🔐✅"
//            Ns3.textColor = .green
        }else{
            Ns3.text = "🔒❌"
//            Ns3.textColor = .red
        }
    }
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let YouTube = UserDefaults.standard.bool(forKey: "YouTube")
        let School = UserDefaults.standard.bool(forKey: "School")
        let Name = UserDefaults.standard.string(forKey: "Name")
        
        Name2.text = Name
        Swich1.isOn = School

        Swich2.isOn = YouTube
    }
    

}

