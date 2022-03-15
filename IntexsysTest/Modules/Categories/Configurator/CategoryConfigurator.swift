//
//  CategoryConfigurator.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryConfigurator {
    static func createCategoryView() -> ViewProtocol {
        let view: CategoryView = Storyboard.loadVC()
        let interactor = CategoryInteractor(service: NetworkServiceImpl())
        let router = CategoryRouter(view: view)
        view.viewOutput = CategoryPresenter(view: view, interactor: interactor, router: router)
        return view
    }
}
