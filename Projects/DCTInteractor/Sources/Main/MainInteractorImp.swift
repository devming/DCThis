//
//  MainInteractorImp.swift
//  DCTInteractor
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import Combine
//import DCTNetwork

public class MainInteractorImp: MainInteractor {
    lazy public var productProvider: MoyaProvider<ProductService> = {
        return MoyaProvider<ProductService>()
    }()
    
    public func fetchProducts() -> AnyPublisher<[Product], MoyaError> {
        return productProvider
            .requestPublisher(ProductService.fetchProducts)
//            .map { $0.res}
            .map([Product].self, atKeyPath: nil)
            .eraseToAnyPublisher()
    }
    
    
}
