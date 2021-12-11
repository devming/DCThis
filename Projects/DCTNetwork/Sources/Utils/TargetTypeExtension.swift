import Foundation
import Moya
import CombineMoya

extension TargetType {
    public var baseURL: URL {
        guard let url = URL(string: "") else {
            fatalError("Wrong URL!!")
        }
        return url
    }
}
