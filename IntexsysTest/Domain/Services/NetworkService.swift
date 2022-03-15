//
//  NetworkService.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

typealias CategoriesCallback = ([CategoryDTO]?) -> Void
typealias ProductsCallback = (ProductListDTO?) -> Void
typealias ProductCallback = (ProductDTO?) -> Void

protocol NetworkService {
    func getCategories(completion: @escaping CategoriesCallback)
    func getProducts(url: String, completion: @escaping ProductsCallback)
    func getProduct(url: String, completion: @escaping ProductCallback)
}
