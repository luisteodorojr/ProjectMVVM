//
//  LoginViewModel.swift
//  Project
//
//  Created TQI on 28/03/19.
//  Copyright © 2019 Luis Teodoro. All rights reserved.
//
//

import UIKit

class LoginViewModel {
    
    var model: LoginModel?
    weak var delegate: LoginViewModelDelegate?
    
    init(delegate: LoginViewModelDelegate) {
        self.delegate = delegate
    }
    
    func goHome() {
        delegate?.loginViewModelGoHome(self)
    }
}
