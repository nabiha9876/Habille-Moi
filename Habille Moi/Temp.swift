//
//  Temp.swift
//  Habille Moi
//
//  Created by Finley Sampson on 03/12/2018.
//  Copyright © 2018 Nabiha Rahman. All rights reserved.
//

import Foundation

struct API {
    
    static let APIKey = ""
    static var BaseURL = URL(string: "")!
    
    static var AuthenticatedBaseURL: URL {
        return BaseURL.appendPathComponent(APIKey)
    
    }
    
    struct Defaults {
        
        static let Latitude: Double =//
        static let Longtitude: Double =//
        
    }

}
