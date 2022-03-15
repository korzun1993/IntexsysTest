//
//  ViewProtocol.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

protocol ViewProtocol: class {
    var viewController: UIViewController { get }
}

extension ViewProtocol where Self: UIViewController {
    var viewController: UIViewController { return self }
}

