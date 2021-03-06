//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class AppConfig: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** The map of classification ratings. */
    public var classification: [String: Classification]?

    public var general: AppConfigGeneral?

    public var navigation: Navigation?

    public var playback: AppConfigPlayback?

    public var sitemap: [PageSummary]?

    public var subscription: AppConfigSubscription?

    public init(classification: [String: Classification]? = nil, general: AppConfigGeneral? = nil, navigation: Navigation? = nil, playback: AppConfigPlayback? = nil, sitemap: [PageSummary]? = nil, subscription: AppConfigSubscription? = nil) {
        self.classification = classification
        self.general = general
        self.navigation = navigation
        self.playback = playback
        self.sitemap = sitemap
        self.subscription = subscription
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        classification = jsonDictionary.json(atKeyPath: "classification")
        general = jsonDictionary.json(atKeyPath: "general")
        navigation = jsonDictionary.json(atKeyPath: "navigation")
        playback = jsonDictionary.json(atKeyPath: "playback")
        sitemap = jsonDictionary.json(atKeyPath: "sitemap")
        subscription = jsonDictionary.json(atKeyPath: "subscription")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let classification = classification?.encode() {
            dictionary["classification"] = classification
        }
        if let general = general?.encode() {
            dictionary["general"] = general
        }
        if let navigation = navigation?.encode() {
            dictionary["navigation"] = navigation
        }
        if let playback = playback?.encode() {
            dictionary["playback"] = playback
        }
        if let sitemap = sitemap?.encode() {
            dictionary["sitemap"] = sitemap
        }
        if let subscription = subscription?.encode() {
            dictionary["subscription"] = subscription
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}
