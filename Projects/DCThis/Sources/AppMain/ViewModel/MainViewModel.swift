//
//  MainViewModel.swift
//  DCThis
//
//  Created by devming on 2021/12/11.
//  Copyright © 2021 com.parserich. All rights reserved.
//

import Foundation
import DCTInteractor
import Combine

class MainViewModel: ObservableObject {
    
    let interactor: MainInteractor
    
    var cancellables: Set<AnyCancellable>
    @Published
    var products: [Product]
    
    init(interactor: MainInteractor) {
        self.interactor = interactor
        products = [Product]()
        cancellables = Set<AnyCancellable>()
    }
}

extension MainViewModel {
    
    
    func getProducts() {
        interactor.fetchProducts()
            .receive(on: DispatchQueue.main)
            .sink { result in
                
            } receiveValue: { [weak self] products in
                self?.products.removeAll()
                self?.products.append(contentsOf: products)
            }
            .store(in: &cancellables)

    }
}
