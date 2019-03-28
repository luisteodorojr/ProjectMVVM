//
//  HomeViewController.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewModel: HomeViewModel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(viewModel: HomeViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        title = "Início"
        tabBarItem.title = ""
    }
    
    @IBAction func btnOpenList(_ sender: Any) {
        viewModel.goList()
    }
}
