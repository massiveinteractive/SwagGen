//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ServiceFrequency: APIModel {

    public var highestFrequency: Double?

    public var lowestFrequency: Double?

    public init(highestFrequency: Double? = nil, lowestFrequency: Double? = nil) {
        self.highestFrequency = highestFrequency
        self.lowestFrequency = lowestFrequency
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        highestFrequency = try container.decodeIfPresent("highestFrequency")
        lowestFrequency = try container.decodeIfPresent("lowestFrequency")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(highestFrequency, forKey: "highestFrequency")
        try container.encodeIfPresent(lowestFrequency, forKey: "lowestFrequency")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ServiceFrequency else { return false }
      guard self.highestFrequency == object.highestFrequency else { return false }
      guard self.lowestFrequency == object.lowestFrequency else { return false }
      return true
    }

    public static func == (lhs: ServiceFrequency, rhs: ServiceFrequency) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
