//
//  ProductListConfigurator.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductListConfigurator {
    static func createProductListView(_ category: CategoryDTO) -> ViewProtocol {
        let view: ProductListView = Storyboard.loadVC()
        let interactor = ProductListInteractor(service: NetworkServiceImpl())
        let router = ProductListRouter(view: view)
        let presenter = ProductListPresenter(view: view, interactor: interactor, router: router)
        presenter.category = category
        view.viewOutput = presenter
        return view
    }
}
