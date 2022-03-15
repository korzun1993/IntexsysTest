//
//  ProductDTO.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import Foundation

class ProductDTO: Codable {
    let shortName: String
    let primaryImage: String
    let price: Double
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case price = "min_sale_price"
        case shortName = "short_name"
        case primaryImage = "primary_image"
        case description
    }
}
