//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class SearchResults: APIModel {

    /** The search term. */
    public var term: String

    /** The total number of results. */
    public var total: Int

    /** The list of all items relevant to the search term.

If this is present then the `movies` and `tv` lists won't be.
 */
    public var items: ItemList?

    /** The list of movie items relevant to the search term.

If this is present then the `items` list won't be.
 */
    public var movies: ItemList?

    /** The list of people relevant to the search term. */
    public var people: [Person]?

    /** The list of tv items (shows + programs) relevant to the search term.

If this is present then the `items` list won't be.
 */
    public var tv: ItemList?

    public init(term: String, total: Int, items: ItemList? = nil, movies: ItemList? = nil, people: [Person]? = nil, tv: ItemList? = nil) {
        self.term = term
        self.total = total
        self.items = items
        self.movies = movies
        self.people = people
        self.tv = tv
    }

    private enum CodingKeys: String, CodingKey {
        case term
        case total
        case items
        case movies
        case people
        case tv
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        term = try container.decode(.term)
        total = try container.decode(.total)
        items = try container.decodeIfPresent(.items)
        movies = try container.decodeIfPresent(.movies)
        people = try container.decodeArrayIfPresent(.people)
        tv = try container.decodeIfPresent(.tv)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(term, forKey: .term)
        try container.encode(total, forKey: .total)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(movies, forKey: .movies)
        try container.encodeIfPresent(people, forKey: .people)
        try container.encodeIfPresent(tv, forKey: .tv)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? SearchResults else { return false }
      guard self.term == object.term else { return false }
      guard self.total == object.total else { return false }
      guard self.items == object.items else { return false }
      guard self.movies == object.movies else { return false }
      guard self.people == object.people else { return false }
      guard self.tv == object.tv else { return false }
      return true
    }

    public static func == (lhs: SearchResults, rhs: SearchResults) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
