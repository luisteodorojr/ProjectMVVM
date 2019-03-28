//
//  LoginViewController.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class LoginViewController: UIViewController {
    
    var viewModel: LoginViewModel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(viewModel: LoginViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }

	override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        viewModel.goHome()
    }
    
}
