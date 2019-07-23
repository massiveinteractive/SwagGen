//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PassengerFlow: APIModel {

    /** Time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc. */
    public var timeSlice: String?

    /** Count of passenger flow towards a platform */
    public var value: Int?

    public init(timeSlice: String? = nil, value: Int? = nil) {
        self.timeSlice = timeSlice
        self.value = value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        timeSlice = try container.decodeIfPresent("timeSlice")
        value = try container.decodeIfPresent("value")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(timeSlice, forKey: "timeSlice")
        try container.encodeIfPresent(value, forKey: "value")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PassengerFlow else { return false }
      guard self.timeSlice == object.timeSlice else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: PassengerFlow, rhs: PassengerFlow) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
