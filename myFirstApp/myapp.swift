import UIKit
// can use appliction or main same
//@UIApplicationMain
@main
class MyApp  : UIResponder , UIApplicationDelegate {
    // here dont intulizing yet , must intulizing
    var window: UIWindow?
    func applicationDidFinishLaunching(_ application: UIApplication) {
        // size of window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let myViewController = UIViewController()
        window?.rootViewController = myViewController
        let mySuperView = UIView()
        mySuperView.backgroundColor = .magenta
        window?.addSubview(mySuperView)
    }
}
