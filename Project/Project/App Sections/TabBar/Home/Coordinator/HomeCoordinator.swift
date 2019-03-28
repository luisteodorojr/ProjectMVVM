//
//  HomeCoordinator.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class HomeCoordinator: Coordinator {
   
    var window: UIWindow
    var viewModel: HomeViewModel?
    var viewController: HomeViewController!
    var navigationController: PTNavigationViewController?
    var listCoordinator: ListCoordinator?

    required init(window: UIWindow) {
        self.window = window
    }
    
    fileprivate func extractedFunc() -> HomeViewController {
        return HomeViewController(viewModel: viewModel!)
    }
    
    func start() -> PTNavigationViewController {
        viewModel = HomeViewModel()
        viewModel?.delegate = self
        viewController = extractedFunc()
        navigationController = PTNavigationViewController(rootViewController: viewController)
        navigationController?.tabBarItem.image = #imageLiteral(resourceName: "home")
        navigationController?.tabBarItem.title = "Início"
        return navigationController!
    }
    
    func start() {
        debugPrint("Starting Home")

    }
}

extension HomeCoordinator: HomeViewModelDelegate {
    func homeViewModelGoList(_ homeViewModel: HomeViewModel) {
        listCoordinator = ListCoordinator()
        listCoordinator?.start(usingPresentation: .push(navigationController: navigationController!))
    }
}
