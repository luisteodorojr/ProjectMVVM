//
//  ListViewController.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class ListViewController: UIViewController {
    
    var viewModel: ListViewModel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(viewModel: ListViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }

	override func viewDidLoad() {
        super.viewDidLoad()
        title = "Lista"
    }

}
