//
//  LoginCoordinator.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class LoginCoordinator: Coordinator {
    var window: UIWindow
    var viewModel: LoginViewModel!
    var login: LoginViewController?
    var tabBarCoordinator: TabBarCoordinator?

    required init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        viewModel = LoginViewModel(delegate: self)
        login = LoginViewController(viewModel: viewModel)
        window.rootViewController = login
    }
    
    func stop() {
        viewModel = nil
        login = nil
    }
}

extension LoginCoordinator: LoginViewModelDelegate {
    func loginViewModelGoHome(_ loginViewModel: LoginViewModel) {
        tabBarCoordinator = TabBarCoordinator(window: self.window)
        tabBarCoordinator?.start()
    }
}
