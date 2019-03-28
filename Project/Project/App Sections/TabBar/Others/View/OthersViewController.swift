//
//  OthersViewController.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class OthersViewController: UIViewController {
    
    var viewModel: OthersViewModel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(viewModel: OthersViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        title = "Outros"
        tabBarItem.title = ""
    }

}
