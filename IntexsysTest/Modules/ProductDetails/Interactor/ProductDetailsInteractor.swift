//
//  ProductDetailsInteractor.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductDetailsInteractor: ProductDetailsInteractorProtocol {
    let service: NetworkService
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func loadData(url: String, completion: @escaping ProductCallback) {
        service.getProduct(url: url, completion: completion)
    }
}
