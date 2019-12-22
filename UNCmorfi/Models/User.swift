//
// Copyright © 2019 George Alegre. All rights reserved.
//

import Foundation

class User: Codable {
    var name: String
    let code: String
    var balance: Int
    var imageCode: String
    var imageURL: URL?
    var expirationDate: Date
}

extension User: Equatable {
    static func ==(lhs: User, rhs: User) -> Bool {
        return lhs.code == rhs.code
    }
}

extension Array where Element == User {
    func matchingOrder(of users: [Element]) throws -> [Element] {
        let result: [Element]
        
        result = users.compactMap { (user) -> Element? in
            guard let index = self.firstIndex(of: user) else {
                return nil
            }
            
            return self[index]
        }
        
        if result.count != self.count {
            throw NSError()
        }
        
        return result
    }
}
