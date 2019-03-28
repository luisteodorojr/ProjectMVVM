//
//  HomeViewModel.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class HomeViewModel {
    
    weak var delegate: HomeViewModelDelegate?
    
    func goList() {
        delegate?.homeViewModelGoList(self)
    }
}
