//
//  ListViewModel.swift
//  ReturnLabelTest
//
//  Created by Matheus Ribeiro on 21/02/22.
//

import Foundation

class ListViewModel {
    var itemList: [ListModel.ListItem] = []
    
    init(itemList: [ListModel.ListItem]) {
        self.itemList = itemList
    }
}
