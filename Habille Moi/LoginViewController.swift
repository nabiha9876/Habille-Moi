import UIKit
import Firebase
import MessageUI


class LoginViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
  
        
    
    @IBAction func login(_ sender: Any) {    
        guard let email = emailTextField.text, let password = passwordTextField.text else { return }
    
    Auth.auth().signIn(withEmail: email, password: password) { user, error in
  
    if let _ = user {
        
        self.dismiss(animated: true, completion: nil)
            }
                

                    
    }
                
                
    }

    @IBAction func SendEmail(_ sender: Any) {


        let mailComposeViewController = configureMailController()

        if MFMailComposeViewController.canSendMail(){ self.present(mailComposeViewController, animated: true, completion: nil)} else{ showMailError()


        }

    }

    func configureMailController() -> MFMailComposeViewController {

        let mailComposerVC = MFMailComposeViewController()

        //allows the mail view controller to come up


        mailComposerVC.setToRecipients(["appsupport@habillemoi.com"])

        mailComposerVC.setSubject("Register/Log in Help")

        mailComposerVC.setMessageBody("Please tell us the problem and we'll get back to you as a matter of urgency.", isHTML: false)

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
        
        func dismiss(_ sender: UIBarButtonItem) {
            self.dismiss(animated: true, completion: nil)
        }

      

    


        


    



}
}

