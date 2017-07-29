//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class NavEntry: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Child nav entries. */
    public var children: [NavEntry]?

    /** Embedded content to display in a navigation menu. */
    public var content: NavContent?

    /** A map of custom fields defined by a curator for a nav entry. */
    public var customFields: [String: Any]?

    /** True if this is a featured menu item.

Featured menu items may have a more prominent presentation than others in the navigation.
 */
    public var featured: Bool?

    /** The text label for this nav entry. */
    public var label: String?

    /** The path this nav entry links to.
May be undefined if the nav entry is not clickable e.g. a nav heading.
If the value begins with `http` then it's an external url.
 */
    public var path: String?

    public init(children: [NavEntry]? = nil, content: NavContent? = nil, customFields: [String: Any]? = nil, featured: Bool? = nil, label: String? = nil, path: String? = nil) {
        self.children = children
        self.content = content
        self.customFields = customFields
        self.featured = featured
        self.label = label
        self.path = path
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        children = jsonDictionary.json(atKeyPath: "children")
        content = jsonDictionary.json(atKeyPath: "content")
        customFields = jsonDictionary.json(atKeyPath: "customFields")
        featured = jsonDictionary.json(atKeyPath: "featured")
        label = jsonDictionary.json(atKeyPath: "label")
        path = jsonDictionary.json(atKeyPath: "path")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let children = children?.encode() {
            dictionary["children"] = children
        }
        if let content = content?.encode() {
            dictionary["content"] = content
        }
        if let customFields = customFields {
            dictionary["customFields"] = customFields
        }
        if let featured = featured {
            dictionary["featured"] = featured
        }
        if let label = label {
            dictionary["label"] = label
        }
        if let path = path {
            dictionary["path"] = path
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}