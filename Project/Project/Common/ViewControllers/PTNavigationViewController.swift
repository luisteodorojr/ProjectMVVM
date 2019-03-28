//
//  PTNavigationViewController.swift
//  Project
//
//  Created by TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//

import UIKit

class PTNavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultNavigationStyle()
        self.tabBarItem.title = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func defaultNavigationStyle() {
        navigationBar.barTintColor = UIColor.ptNavigation
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationBar.isTranslucent = false
        navigationBar.shadowImage = UIImage()
        navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    
}
