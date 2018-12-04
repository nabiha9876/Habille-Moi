import Foundation

final class DataManager {
    
    let baseURL: URL
    
    // MARK: - Initialization
    
    init(baseURL: URL) {
        self.baseURL = baseURL
    }
}

import Foundation

enum DataManagerError: 
