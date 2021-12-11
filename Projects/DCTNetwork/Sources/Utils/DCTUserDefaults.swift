import Foundation

public enum DCTUserDefaults: String {
    case anonymousId
    
    public func set(value: Any?) {
        UserDefaults.standard.set(value, forKey: rawValue)
    }
    
    public func value<T>() -> T? {
        switch self {
            case .anonymousId:
                return UserDefaults.standard.string(forKey: rawValue) as? T
        }
         
    }
}
