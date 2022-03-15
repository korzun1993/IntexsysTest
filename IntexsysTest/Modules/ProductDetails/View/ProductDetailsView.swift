//
//  ProductDetailsView.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit
import AlamofireImage

class ProductDetailsView: UIViewController, ProductDetailsViewInputProtocol, ViewProtocol {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceTagLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var viewOutput: ProductDetailsViewOutputProtocol!
    
    var data: ProductDTO? {
        didSet {
            setupData()
        }
    }
    
    func setupData() {
        titleLabel.text = nil
        priceLabel.text = nil
        descriptionLabel.text = nil
        priceTagLabel.isHidden = true
        
        guard let data = data else { return }
        titleLabel.text = data.shortName
        priceLabel.text = StringFormatHelper.formatCurrency(data.price)
        priceTagLabel.isHidden = false

        if let stringData = data.description.data(using: .utf8),
           let attributedString = try? NSAttributedString(data: stringData,
                                                          options: [.documentType: NSAttributedString.DocumentType.html],
                                                          documentAttributes: nil) {
            descriptionLabel.attributedText = attributedString
        }
        
        let imageURL = ImageURLFormater.thumbnailImageURL(imageName: data.primaryImage)
        imageView.af_setImage(withURL: URL(string: imageURL)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        viewOutput.loadData()
    }
    
    func updateUI(data: ProductDTO?) {
        self.data = data
    }
    
    @IBAction func didPressGoHome() {
        viewOutput.navigateHome()
    }
}
