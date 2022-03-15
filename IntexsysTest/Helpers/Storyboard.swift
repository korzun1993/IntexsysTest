//
//  Storyboard.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class Storyboard {
    static func loadVC<T>() -> T {
        let screenId = String(describing: T.self)
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: screenId) as! T
    }
}

