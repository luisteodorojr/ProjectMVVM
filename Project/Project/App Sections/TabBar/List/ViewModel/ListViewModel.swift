//
//  ListViewModel.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class ListViewModel {
    
    weak var delegate: ListViewModelDelegate?
    
    init(delegate: ListViewModelDelegate) {
        self.delegate = delegate
    }

}
