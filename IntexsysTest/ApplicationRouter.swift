//
//  ApplicationRouter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ApplicationRouter {
    
    static let shared = ApplicationRouter()
    var rootWindow: UIWindow!
    
    func startNavigation() {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = CategoryConfigurator.createCategoryView().viewController
        let navigationVC = UINavigationController(rootViewController: rootVC)
        window.rootViewController = navigationVC
        window.makeKeyAndVisible()
        self.rootWindow = window
    }
}
