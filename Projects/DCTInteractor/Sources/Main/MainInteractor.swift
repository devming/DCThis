//
//  MainInteractor.swift
//  DCTInteractor
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import Combine
import Moya
import DCTNetwork

public protocol MainInteractor {
    
    var productProvider: MoyaProvider<ProductService> { get }
    
    func fetchProducts() -> AnyPublisher<[Product], MoyaError>
}
