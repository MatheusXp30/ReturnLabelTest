//
//  ListViewController.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import UIKit

protocol ListViewControllerDelegate: AnyObject {
    func didSelectRow(viewController: ListViewController, item: ListModel.ListItem)
}

class ListViewController: UIViewController {
    
    var viewModel: ListViewModel?
    
    var delegate: ListViewControllerDelegate?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.itemList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return .init() }
        let item = viewModel?.itemList[indexPath.row]
        cell.textLabel?.text = item?.title
        cell.textLabel?.textColor = item?.color
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let item = viewModel?.itemList[indexPath.row] {
            delegate?.didSelectRow(viewController: self, item: item)
        }
    }
}
