//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AdditionalProperties: APIModel {

    public var category: String?

    public var key: String?

    public var modified: DateTime?

    public var sourceSystemKey: String?

    public var value: String?

    public init(category: String? = nil, key: String? = nil, modified: DateTime? = nil, sourceSystemKey: String? = nil, value: String? = nil) {
        self.category = category
        self.key = key
        self.modified = modified
        self.sourceSystemKey = sourceSystemKey
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case category
        case key
        case modified
        case sourceSystemKey
        case value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        category = try container.decodeIfPresent(.category)
        key = try container.decodeIfPresent(.key)
        modified = try container.decodeIfPresent(.modified)
        sourceSystemKey = try container.decodeIfPresent(.sourceSystemKey)
        value = try container.decodeIfPresent(.value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(modified, forKey: .modified)
        try container.encodeIfPresent(sourceSystemKey, forKey: .sourceSystemKey)
        try container.encodeIfPresent(value, forKey: .value)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AdditionalProperties else { return false }
      guard self.category == object.category else { return false }
      guard self.key == object.key else { return false }
      guard self.modified == object.modified else { return false }
      guard self.sourceSystemKey == object.sourceSystemKey else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: AdditionalProperties, rhs: AdditionalProperties) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
