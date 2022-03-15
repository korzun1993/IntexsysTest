//
//  CategoryViewTableViewCell.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryViewTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    
    func setup(data: CategoryDTO) {
        titleLabel.text = data.shortName
    }
}
