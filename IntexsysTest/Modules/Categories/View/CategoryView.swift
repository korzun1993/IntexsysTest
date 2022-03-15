//
//  CategoryViewViewController.swift
//  IntexsysTest
//
//  Created by Vladyslav Korzun on 15/03/2022.
//

import UIKit

class CategoryView: UIViewController, CategoryViewInputProtocol, ViewProtocol {
    @IBOutlet private weak var tableView: UITableView!
    
    var viewOutput: CategoryViewOutputProtocol!

    var items: [CategoryDTO] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutput.loadData()
    }
    
    func updateUI(data: [CategoryDTO]) {
        self.items = data
    }
}

extension CategoryView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CategoryViewTableViewCell.self),
                                                 for: indexPath)
        (cell as? CategoryViewTableViewCell)?.setup(data: items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        viewOutput.selectItem(index: indexPath.row)
    }
}
