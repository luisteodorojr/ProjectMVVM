//
//  ListCoordinator.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class ListCoordinator: BaseCoordinator {
    
    typealias V = ListViewController
    
    var view: ListViewController?
    var navigation: PTNavigationViewController?
    var presentationType: PresentationType?
    var viewModel: ListViewModel!
    
    func start() -> ListViewController {
        viewModel = ListViewModel(delegate: self)
        view = ListViewController(viewModel: viewModel)
        
        guard let view = view else {
            return ListViewController(viewModel: viewModel)
        }
        view.hidesBottomBarWhenPushed = true
        return view
    }
    
    func stop() {
        view = nil
        navigation = nil
        presentationType = nil
        viewModel = nil
    }
}

extension ListCoordinator: ListViewModelDelegate {
    
}
