//
//  ProductListView.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class ProductListView: UIViewController, ProductListViewInputProtocol, ViewProtocol {
    
    @IBOutlet private weak var tableView: UITableView!
    
    var viewOutput: ProductListViewOutputProtocol!

    var items: [ShortProductDTO] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.loadData()
    }
    
    func updateUI(data: [ShortProductDTO], title: String) {
        self.items = data
        self.title = title
    }
}

extension ProductListView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProductListViewTableCell.self),
                                                 for: indexPath)
        (cell as? ProductListViewTableCell)?.setup(data: items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewOutput.selectItem(index: indexPath.row)
    }
}
