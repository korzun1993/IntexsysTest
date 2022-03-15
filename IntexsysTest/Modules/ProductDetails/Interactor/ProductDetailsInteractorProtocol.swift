//
//  ProductDetailsInteractorProtocol.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

protocol ProductDetailsInteractorProtocol {
    func loadData(url: String, completion: @escaping ProductCallback)
}
