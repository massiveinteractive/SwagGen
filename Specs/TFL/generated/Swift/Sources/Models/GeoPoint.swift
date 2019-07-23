//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GeoPoint: APIModel {

    public var lat: Double

    public var lon: Double

    public init(lat: Double, lon: Double) {
        self.lat = lat
        self.lon = lon
    }

    private enum CodingKeys: String, CodingKey {
        case lat
        case lon
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        lat = try container.decode(.lat)
        lon = try container.decode(.lon)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(lat, forKey: .lat)
        try container.encode(lon, forKey: .lon)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GeoPoint else { return false }
      guard self.lat == object.lat else { return false }
      guard self.lon == object.lon else { return false }
      return true
    }

    public static func == (lhs: GeoPoint, rhs: GeoPoint) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
