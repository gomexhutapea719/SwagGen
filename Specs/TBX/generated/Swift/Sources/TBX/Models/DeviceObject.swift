//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class DeviceObject: JSONDecodable, JSONEncodable, PrettyPrintable {

    public var token: String

    /** When this device was created */
    public var createdAt: Date

    public var type: [String: Any]

    public var customer: [String: Any]

    public var description: String?

    public init(token: String, createdAt: Date, type: [String: Any], customer: [String: Any], description: String? = nil) {
        self.token = token
        self.createdAt = createdAt
        self.type = type
        self.customer = customer
        self.description = description
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        token = try jsonDictionary.json(atKeyPath: "token")
        createdAt = try jsonDictionary.json(atKeyPath: "createdAt")
        type = try jsonDictionary.json(atKeyPath: "type")
        customer = try jsonDictionary.json(atKeyPath: "customer")
        description = jsonDictionary.json(atKeyPath: "description")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        dictionary["token"] = token
        dictionary["createdAt"] = createdAt.encode()
        dictionary["type"] = type
        dictionary["customer"] = customer
        if let description = description {
            dictionary["description"] = description
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
