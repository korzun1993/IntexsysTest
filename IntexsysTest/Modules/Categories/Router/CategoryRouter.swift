//
//  CategoryRouter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryRouter: BaseRouter, CategoryRouterProtocol {
    func openCategory(category: CategoryDTO) {
        let viewController = ProductListConfigurator.createProductListView(category).viewController
        view.viewController.navigationController?.pushViewController(viewController,
                                                                     animated: true)
    }
}
