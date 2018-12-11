import UIKit
import Firebase
import MessageUI

class LoginViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
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
    @IBAction func sendEmail(_ sender: Any) {
        
        let mailComposeViewController = configureMailController()
      
        if MFMailComposeViewController.canSendMail(){ self.present(mailComposeViewController, animated: true, completion: nil)} else{ showMailError()}
        
    }
    
    func configureMailController() -> MFMailComposeViewController {
      
        let mailComposerVC = MFMailComposeViewController()
        
        //allows the mail view controller to come up
        
        
        mailComposerVC.setToRecipients(["email"])
        
        mailComposerVC.setSubject("blah blah")
        
        mailComposerVC.setMessageBody("blah", isHTML: false)
        
        //presets as to what the users email will pop up and say
        
        return mailComposerVC
        
    }
    
    func showMailError() {
        
        let sendMailErrorAlert = UIAlertController(title: "Email Not Supported", message: "Your device could not send Email.", preferredStyle: .alert)
        //the alert
        
        let dismiss = UIAlertAction(title: "Dismiss", style: .default, handler: nil)
        
        sendMailErrorAlert.addAction(dismiss)
        
        self.present(sendMailErrorAlert, animated: true, completion: nil)
        
        // alert for devices that do not suppport email or do not have an email account set up
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
        
        //closes the email once the user has sent or has pressed cancel

    }
}


    


