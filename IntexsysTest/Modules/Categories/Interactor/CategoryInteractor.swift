//
//  CategoryInteractor.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryInteractor: CategoryInteractorProtocol {
    let service: NetworkService
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func loadData(completion: @escaping CategoriesCallback) {
        service.getCategories(completion: completion)
    }
}
