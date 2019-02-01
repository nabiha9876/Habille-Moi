import UIKit
import Firebase
import SwiftDate
import Alamofire
import CoreLocation


class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var topImageView: UIImageView!

    @IBOutlet weak var bottomImageView: UIImageView!
    
    @IBOutlet weak var Weather: UILabel!
    
    var lastLocationRequest: CLLocation?
    
    var summerTops = [String]()
    var summerBottoms = [String]()
    var winterTops = [String]()
    var winterBottoms = [String]()
    

    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let today = DateInRegion(Date(), region: Region.current)

        let startOfWinter = "\(today.year)-10-01 00:00:01".toDate()!
        let endOfWinter = startOfWinter + 6.months
       
    
        

        if today > startOfWinter && today < endOfWinter {
            
          
            print("Winter")
            
            let topimage = UIImage(named: winterTops.randomElement()!)
            topImageView.image = topimage
         
        
           
            let bottomimage = UIImage(named: winterBottoms.randomElement()!)
            bottomImageView.image = bottomimage
        
        } else {
            
            print("Summer")
            
            let topimage = UIImage(named: summerTops.randomElement()!)
            topImageView.image = topimage
            
            
           
           let bottomimage = UIImage(named: summerBottoms.randomElement()!)
            bottomImageView.image = bottomimage
            
        }
       
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
    locationManager.requestAlwaysAuthorization()
    locationManager.startUpdatingLocation()
        

        
 
    
            
           summerTops = ["SummerTop-1.jpg", "SummerTop-2." , "SummerTop-3", "SummerTop-4",]
            
            summerBottoms = ["SummerBottoms-1", "SummerBottoms-2", "SummerBottoms-3", "SummerBottoms-4"]
            
            winterTops = ["WinterTop-1","WinterTop-2", "WinterTop-3", "WinterTop-4","WinterTop-5"]
            
            winterBottoms = ["WinterBottoms-3", "WinterBottoms-4", "WinterBottoms-5", "WinterBottoms-1"]
    
    }

    
 


    

    @IBAction func logout(_ sender: Any) {
        AppManager.shared.Logout() 
    }
    



}
