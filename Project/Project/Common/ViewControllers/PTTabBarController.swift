//
//  PTTabBarController.swift
//  Project
//
//  Created by TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//

import UIKit

class PTTabBarController: TabBarController {
    enum TabBarSections: Int {
        case home = 0
        case extract
        case transfers
        case cards
        case others
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func select(section: TabBarSections) {
        selectedIndex = section.rawValue
    }
}
