import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        weak var topImageView: UIImageView!
        weak var bottomImageView: UIImageView!
        
        var tops = [String]()
        var bottoms = [String]()
        
        //SUMMERCLOTHES
        func viewDidLoad() {
            super.viewDidLoad()
            
            tops = ["SummerTop-1", "SummerTop-2" , "SummerTop-3", "SummerTop-4",]
            bottoms = ["SummerBottoms-1", "SummerBottoms-2", "SummerBottoms-3", "SummerBottoms-4"]
        }
        
        
        
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            guard let top = tops.randomElement(), let bottom = bottoms.randomElement() else { return }
            topImageView.image = UIImage(named: top)
            bottomImageView.image = UIImage(named: bottom)
            
            
            
        }
        
        
        
    }


    }




