//
//  OthersCoordinator.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class OthersCoordinator: Coordinator {
    
    var window: UIWindow
    var viewModel: OthersViewModel?
    var viewController: OthersViewController!
    var navigationController: PTNavigationViewController?

    required init(window: UIWindow) {
        self.window = window
    }
    
    func start() -> PTNavigationViewController {
        viewModel = OthersViewModel()
        viewModel?.delegate = self
        viewController = OthersViewController(viewModel: viewModel!)
        navigationController = PTNavigationViewController(rootViewController: viewController)
        navigationController?.tabBarItem.image = #imageLiteral(resourceName: "more")
        navigationController?.tabBarItem.title = "Outros"
        return navigationController!
    }
    
    func start() {
        debugPrint("Starting Home")
        
    }
}

extension OthersCoordinator: OthersViewModelDelegate {
    
}
