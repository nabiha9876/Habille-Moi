import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var reenterPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func registerButtonTapped(_ sender: AnyObject) {
        AppManager.shared.appContainer.presentedViewController?.dismiss(animated: true, completion: nil)
    }
    
    
}
