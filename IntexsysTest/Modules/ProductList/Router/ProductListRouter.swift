//
//  ProductListRouter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductListRouter: BaseRouter, ProductListRouterProtocol {
    func openProduct(product: ShortProductDTO) {
        let viewController = ProductDetailsConfigurator.createProductDetailsView(product).viewController
        view.viewController.navigationController?.pushViewController(viewController, animated: true)
    }
}
