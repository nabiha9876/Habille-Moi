import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Auth.auth().signIn(withEmail: "test@test.com", password: "password") { result, error in
            if let _ = result?.user {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
        
}
