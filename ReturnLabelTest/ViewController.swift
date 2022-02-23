//
//  ViewController.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "ListViewController") as? ListViewController {
            let viewModel = ListViewModel(itemList: getList())
            viewModel.didTapItemHandler = { item in
                viewController.dismiss(animated: true, completion: nil)
                self.titleLabel.text = item.title
                self.titleLabel.textColor = item.color
            }
            viewController.viewModel = viewModel
            present(viewController, animated: true, completion: nil)
        }
    }
    
    private func getList() -> [ListModel.ListItem] {
        let list: [ListModel.ListItem] = [
            .init(title: "item1", color: .red),
            .init(title: "item2", color: .orange),
            .init(title: "item3", color: .gray),
            .init(title: "item4", color: .blue),
            .init(title: "item5", color: .green),
        ]
        
        return list
    }
}

