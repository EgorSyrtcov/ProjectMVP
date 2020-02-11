//
//  SecondPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CreatePresenter {
    
    private weak var viewController: CreateViewController?
    
    init(viewController: CreateViewController) {
        self.viewController = viewController
    }
    
    func presentNextVC() {
        viewController?.navigationController?.pushViewController(PickerAssembly.createModule(delegate: self.viewController), animated: true)
    }
}

