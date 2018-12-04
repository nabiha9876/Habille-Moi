import Foundation


class TopImage {
    //class name
    
    var image = [TopImage]()
    
    init(){
       // Images = [PUT IN IMAGES IN HERE]
        // "identity words"
    }
    
    func randomImage() -> TopImage {
       return TopImage.random()!
        //returns the result so they dont just add one to another and use up memory.
    }
    
    
    
}


