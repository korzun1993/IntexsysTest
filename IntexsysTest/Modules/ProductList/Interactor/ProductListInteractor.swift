//
//  ProductListInteractor.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductListInteractor: ProductListInteractorProtocol {
    let service: NetworkService
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func loadData(url: String, completion: @escaping ProductsCallback) {
        service.getProducts(url: url, completion: completion)
    }
}
