//
//  TabBarCoordinator.swift
//  Project
//
//  Created by TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//

import UIKit

class TabBarCoordinator: Coordinator {
    var window: UIWindow
    
    private var homeCoordinator: HomeCoordinator?
    private var othersCoordinator: OthersCoordinator?
    var tabBar: PTTabBarController?
    
    required init(window: UIWindow) {
        self.window = window
        homeCoordinator = HomeCoordinator(window: self.window)
        othersCoordinator = OthersCoordinator(window: self.window)
        tabBar = PTTabBarController()
    }
    
    func start() {
        tabBar!.viewControllers = [
            homeCoordinator!.start(),
            othersCoordinator!.start()
        ]
        window.rootViewController = tabBar
    }
    
    func stop() {
        homeCoordinator = nil
        othersCoordinator = nil
        tabBar = nil
    }
    
    func selectTabBar(_ section: PTTabBarController.TabBarSections) {
        tabBar?.select(section: section)
    }
}
