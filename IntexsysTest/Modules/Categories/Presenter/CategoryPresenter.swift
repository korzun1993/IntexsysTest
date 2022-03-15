//
//  CategoryPresenter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryPresenter: BasePresenter<CategoryViewInputProtocol, CategoryInteractorProtocol, CategoryRouterProtocol>, CategoryViewOutputProtocol {
    
    private var data: [CategoryDTO] = []
    
    func loadData() {
        interactor.loadData { [weak self] data in
            guard let self = self else { return }
            self.data = data ?? []
            self.view.updateUI(data: self.data)
        }
    }
    
    func selectItem(index: Int) {
        router.openCategory(category: data[index])
    }
    
    
}
