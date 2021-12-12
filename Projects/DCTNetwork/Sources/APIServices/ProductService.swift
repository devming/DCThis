//
//  ProductService.swift
//  DCTNetwork
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import Moya

public enum ProductService {
    // 상품 가져오는 API
    case fetchProducts
}

extension ProductService: TargetType {
    public var path: String {
        switch self {
            case .fetchProducts:
                return "/products"
        }
    }
    
    public var method: Moya.Method {
        switch self {
            case .fetchProducts:
                return .get
        }
    }
    
    public var validationType: ValidationType {
        return .successCodes
    }
    
    public var task: Task {
        switch self {
            case .fetchProducts:
                return .requestPlain
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
            case .fetchProducts:
                return URLEncoding.default
        }
    }
    
    public var headers: [String: String]? {
        var headers = ["Content-Type": "application/json"]
//        if let anonymousId: String = BringUserDefaults.anonymousId.value() {
//            headers["Authorization"] = anonymousId
//        }
        return headers
    }
    
    public func getSamples<D: Decodable>() -> [D]? {
        switch self {
            case .fetchProducts:
                return try? JSONDecoder().decode([ProductResponse].self, from: sampleData) as? [D]
            default:
                return nil
        }
    }
}

extension ProductService {
    public var sampleData: Data {
        switch self {
            case .fetchProducts:
                return mockProducts
        }
    }
    
    private var mockProducts: Data {
        let mockDatas = ProductResponse(
            
        )
        
        guard let data = try? JSONEncoder().encode(mockDatas) else {
            return Data()
        }
        
        return data
    }
    
}

