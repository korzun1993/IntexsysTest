//
//  ProductDetailsRouter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductDetailsRouter: BaseRouter, ProductDetailsRouterProtocol {
    func openHome() {
        view.viewController.navigationController?.popToRootViewController(animated: true)
    }
}
