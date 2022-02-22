//
//  ListViewController.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import UIKit

class ListViewController: UIViewController {
    
    var viewModel: ListViewModel?
    
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
        cell.textLabel?.text = viewModel?.itemList[indexPath.row]
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let item = viewModel?.itemList[indexPath.row]
    }
}
