//
//  ListViewModel.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import UIKit

class ListViewModel {
    var itemList: [ListModel.ListItem] = []
    
    var didTapItemHandler: (ListModel.ListItem) -> Void = { _ in }
    
    init(itemList: [ListModel.ListItem]) {
        self.itemList = itemList
    }
}
