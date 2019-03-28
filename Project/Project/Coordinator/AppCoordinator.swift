//
//  AppCoordinator.swift
//  Project
//
//  Created by TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var window: UIWindow { get set }
    init(window: UIWindow)
    func start()
}

class AppCoordinator: Coordinator {
    var window: UIWindow
    var loginCoordinator: LoginCoordinator?
    
    required init(window: UIWindow) {
        self.window = window
        self.window.makeKeyAndVisible()
    }
    
    func start() {
        loginCoordinator = LoginCoordinator(window: self.window)
        loginCoordinator?.start()
    }
}
