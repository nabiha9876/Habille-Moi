import Foundation

struct API {
    
    static let APIKey = "8e9ecf16972151233982b4dc8f49f77a"
    static var BaseURL = URL(string: "https://api.darksky.net/forecast//8e9ecf16972151233982b4dc8f49f77a/37.8267,-122.4233")!
    
//   static var AuthenticatedBaseURL: URL {
//       return BaseURL.appendPathComponent(APIKey)
//   }
    
    struct Defaults {
        
        static let Latitude: Double = 50.742844
        static let Longtitude: Double = -1.894659
        
    }
}
