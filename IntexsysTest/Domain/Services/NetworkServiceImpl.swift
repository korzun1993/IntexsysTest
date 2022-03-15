//
//  NetworkServiceImpl.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

import Alamofire

class NetworkServiceImpl: NetworkService {
    func getCategories(completion: @escaping CategoriesCallback) {
    //TODO: Handle networking errors
        let url = composeURL(path: "/api/0.5/categories")
        performRequest(url) { data in
            completion(try? JSONDecoder().decode([CategoryDTO].self, from: data))
        }
    }
    
    func getProducts(url: String, completion: @escaping ProductsCallback) {
        let url = composeURL(path: "/iv-api/0.5/catalog/\(url)/products?_iv_include=gridProducts")
        performRequest(url) { data in
            completion(try? JSONDecoder().decode(ProductListDTO.self, from: data))
        }
    }
    
    func getProduct(url: String, completion: @escaping ProductCallback) {
        let url = composeURL(path: "/api/0.3/products/\(url)")
        performRequest(url) { data in
            completion(try? JSONDecoder().decode(ProductDTO.self, from: data))
        }
    }
    
    func composeURL(path: String) -> String {
        return Settings().baseUrl + path
    }
    
    func performRequest(_ url: String, completion: @escaping (Data) -> Void) {
        let headers = HTTPHeaders([HTTPHeader(name: "x-apikey",
                                              value: Settings().authorizationKey)])
        AF.request(url, headers: headers).response { response in
            completion(response.data ?? Data())
        }
    }
}
