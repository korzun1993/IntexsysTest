//
//  CategoryDTO.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import Foundation

class CategoryDTO: Codable {
    let categoryID: String
    let shortName: String
    let fullName: String
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case categoryID = "category_id"
        case shortName = "short_name"
        case fullName = "full_name"
        case url
    }
}
