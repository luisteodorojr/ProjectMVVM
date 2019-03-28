//
//  TabBarController.swift
//  Project
//
//  Created by TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        //Appearence
        self.tabBar.tintColor = UIColor.ptNavigation
        self.tabBar.backgroundColor = UIColor.white
        self.edgesForExtendedLayout = []
        self.extendedLayoutIncludesOpaqueBars = false
        self.tabBar.isTranslucent = false
        self.delegate = self
    }
}

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        viewController.dismiss(animated: false, completion: nil)
        guard let navigation = (viewController as? UINavigationController) else { return }
        navigation.popToViewController(navigation.viewControllers[0], animated: false)
    }
}

