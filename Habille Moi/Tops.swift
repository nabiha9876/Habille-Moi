import Foundation


class TopImage {
    //class name
    
    var images = [TopImage]()
    
    init(){
       // Images = [PUT IN IMAGES IN HERE]
        // "identity words"
    }
    
    func randomImage() -> TopImage {
       return images.randomElement()!
        //returns the result so they dont just add one to another and use up memory.
    }
    
    
    
}


