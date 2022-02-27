//
//  ProductResponse.swift
//  DCTNetwork
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import DCTInteractor

public struct ProductResponse: Codable {
    public var id: String
    public var title: String
    public var description: String
    public var price: Double
    public var imageUrl: String
    
    public var toProduct: Product {
        Product(
            id: id,
            title: title,
            description: description,
            price: price,
            imageUrl: imageUrl
        )
    }
}
