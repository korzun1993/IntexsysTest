//
//  ProductDetailsConfigurator.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductDetailsConfigurator {
    static func createProductDetailsView(_ product: ShortProductDTO) -> ViewProtocol {
        let view: ProductDetailsView = Storyboard.loadVC()
        let interactor = ProductDetailsInteractor(service: NetworkServiceImpl())
        let router = ProductDetailsRouter(view: view)
        let presenter = ProductDetailsPresenter(view: view, interactor: interactor, router: router)
        presenter.product = product
        view.viewOutput = presenter
        return view
    }
}
