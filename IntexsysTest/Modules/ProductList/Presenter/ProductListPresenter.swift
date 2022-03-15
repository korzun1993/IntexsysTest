//
//  ProductListPresenter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductListPresenter: BasePresenter<ProductListViewInputProtocol, ProductListInteractorProtocol, ProductListRouterProtocol>, ProductListViewOutputProtocol {
    
    var category: CategoryDTO!
    private var data: [ShortProductDTO] = []
    
    func loadData() {
        interactor.loadData(url: category.url) { [weak self] dto in
            guard let self = self else { return }
            self.data = dto?.gridProducts.elements ?? []
            self.view.updateUI(data: self.data, title: self.category.shortName)
        }
        view.updateUI(data: [], title: self.category.shortName)
    }
    
    func selectItem(index: Int) {
        router.openProduct(product: data[index])
    }
}
