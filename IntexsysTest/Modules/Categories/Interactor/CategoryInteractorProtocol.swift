//
//  CategoryInteractorProtocol.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

protocol CategoryInteractorProtocol {
    func loadData(completion: @escaping CategoriesCallback)
}
