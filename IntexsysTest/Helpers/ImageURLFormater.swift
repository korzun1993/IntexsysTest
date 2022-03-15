//
//  ImageURLFormater.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ImageURLFormater {
    static func thumbnailImageURL(imageName: String) -> String {
        return "http://images1.opticsplanet.com/120-90-ffffff/\(imageName).jpg"
    }
    
    static func imageURL(imageName: String) -> String {
        return "http://images1.opticsplanet.com/365-240-ffffff/\(imageName).jpg"
    }
}
