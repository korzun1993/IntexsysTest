//
//  ProductListInteractorProtocol.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

protocol ProductListInteractorProtocol {
    func loadData(url: String, completion: @escaping ProductsCallback)
}
