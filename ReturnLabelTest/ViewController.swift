//
//  ViewController.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapButton(_ sender: Any) {
        let viewModel = ListViewModel(itemList: getList())
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyboard.instantiateViewController(withIdentifier: "ListViewController") as? ListViewController {
            viewController.viewModel = viewModel
            present(viewController, animated: true, completion: nil)
        }
    }
    
    private func getList() -> [String] {
        let list: [String] = [
            "item1",
            "item2",
            "item3",
            "item4",
            "item5",
            "item6",
        ]
        
        return list
    }
}

