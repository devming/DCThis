import Foundation
import Moya
import Combine

public func decode<T: Decodable>(_ data: Data) -> AnyPublisher<T, MoyaError> {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .secondsSince1970
    
    return Just(data)
        .decode(type: T.self, decoder: decoder)
        .mapError { error -> MoyaError in
            return MoyaError.encodableMapping(error)
        }
        .eraseToAnyPublisher()
}

public protocol DomainModel {
    // Domain에 맞는 DTO타입을 정의
    associatedtype ResponseType
    
    // DTO와 Domain Model을 맵핑
    init(from response: ResponseType)
}
