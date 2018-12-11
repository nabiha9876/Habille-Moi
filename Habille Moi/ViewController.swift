import UIKit
import Firebase
import SwiftDate

class ViewController: UIViewController {
    
//    @IBOutlet weak var topImageView: UIImageView!
//
//    @IBOutlet weak var bottomImageView: UIImageView!
    
    
    
    var summerTops = [String]()
    var summerBottoms = [String]()
    var winterTops = [String]()
    var winterBottoms = [String]()
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let today = "2018-12-11 15:30:00".toDate()!

        let startOfWinter = "2018-09-01 15:30:00".toDate()!
        let endOfWinter = startOfWinter + 4.months


        if today > startOfWinter && today < endOfWinter {
            print("winter")
        } else {
            print("Summer")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //SUMMERCLOTHES
        func viewDidLoad() {
            super.viewDidLoad()
            
           summerTops = ["SummerTop-1", "SummerTop-2" , "SummerTop-3", "SummerTop-4",]
            
            summerBottoms = ["SummerBottoms-1", "SummerBottoms-2", "SummerBottoms-3", "SummerBottoms-4"]
            
            winterTops = ["WinterTop-1","WinterTop-2", "WinterTop-3", "WinterTop-4","WinterTop-5"]
            
            winterBottoms = ["WinterBottoms-1", "WinterBottoms-2", "WinterBottoms-3", "WinterBottoms-4", "WinterBottoms-5"]
        }
        
    
        
//        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

//
//
//
//
//            let formatter = DateFormatter()
//            formatter.dateFormat = "dd/MM/"
//            let firstDate = formatter.date(from: "31/08")
//            let secondDate = formatter.date(from: "31/03")
//
//            if firstDate?.compare(secondDate!) == .orderedAscending {
//                print("Winter")
//
//
//
//                let formatter = DateFormatter()
//                formatter.dateFormat = "dd/MM"
//                let firstDate = formatter.date(from: "01/04")
//                let secondDate = formatter.date(from: "01/09")
//
//                if firstDate?.compare(secondDate!) == .orderedAscending {
//                    print("Summer")
//
//
//
//            guard let top = summerTops.randomElement(), let bottom = summerBottoms.randomElement() else { return }
//
//
//            topImageView.image = UIImage(named: top)
//
//            bottomImageView.image = UIImage(named: bottom)
//
//
//
//            }
//
//
//
//
            
            
            
            
//        }
        
        
        
    }



}


