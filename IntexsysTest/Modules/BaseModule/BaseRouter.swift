//
//  BaseRouter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class BaseRouter {
    weak var view: ViewProtocol!
    
    init(view: ViewProtocol) {
        self.view = view
    }
}
