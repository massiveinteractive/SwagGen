//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension PetstoreTest.User {

    /**
    Get user by user name
    */
    public enum GetUserByName {

        public static let service = APIService<Response>(id: "getUserByName", tag: "user", method: "GET", path: "/user/{username}", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name that needs to be fetched. Use user1 for testing.  */
                public var username: String

                public init(username: String) {
                    self.username = username
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: GetUserByName.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(username: String) {
                let options = Options(username: username)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "username" + "}", with: "\(self.options.username)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = User

            /** successful operation */
            case status200(User)

            /** Invalid username supplied */
            case status400

            /** User not found */
            case status404

            public var success: User? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(User.self, from: data))
                case 400: self = .status400
                case 404: self = .status404
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
