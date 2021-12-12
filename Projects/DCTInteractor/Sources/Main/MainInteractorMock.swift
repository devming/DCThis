//
//  MainInteractorMock.swift
//  DCTInteractor
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import Combine
import Moya

public class MainInteractorMock: MainInteractor {
    public func fetchProducts() -> AnyPublisher<[Product], MoyaError> {
        return Just([Product]())
            .eraseToAnyPublisher()
    }
    
    
}
