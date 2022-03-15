//
//  ProductListViewTableCell.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit
import AlamofireImage

class ProductListViewTableCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var priceLabel: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    
    func setup(data: ShortProductDTO) {
        titleLabel.text = data.shortName
        priceLabel.text = StringFormatHelper.formatCurrency(data.price)
        iconImageView.image = nil
        let imageURL = ImageURLFormater.thumbnailImageURL(imageName: data.primaryImage)
        iconImageView.af_setImage(withURL: URL(string: imageURL)!)
    }
}

