//
//  BasePresenter.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class BasePresenter<ViewInputProtocol, InteractorProtocol, RouterProtocol> {
    private weak var rawView: AnyObject?
    var view: ViewInputProtocol! {
        set {
            rawView = newValue as AnyObject
        }
        get {
            return rawView as? ViewInputProtocol
        }
    }
    let interactor: InteractorProtocol
    let router: RouterProtocol
    
    init(view: ViewInputProtocol, interactor: InteractorProtocol, router: RouterProtocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}
