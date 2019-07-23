//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FaresMode: APIModel {

    public var description: String?

    public var id: Int?

    public var name: String?

    public init(description: String? = nil, id: Int? = nil, name: String? = nil) {
        self.description = description
        self.id = id
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case id
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        id = try container.decodeIfPresent(.id)
        name = try container.decodeIfPresent(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FaresMode else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: FaresMode, rhs: FaresMode) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
