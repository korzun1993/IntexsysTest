//
//  ProductDetailsPresenter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductDetailsPresenter: BasePresenter<ProductDetailsViewInputProtocol, ProductDetailsInteractorProtocol, ProductDetailsRouterProtocol>, ProductDetailsViewOutputProtocol {
    
    var product: ShortProductDTO!
    
    func loadData() {
        interactor.loadData(url: product.url) { [weak self] product in
            guard let self = self else { return }
            self.view.updateUI(data: product)
        }
    }
    
    func navigateHome() {
        router.openHome()
    }
}
