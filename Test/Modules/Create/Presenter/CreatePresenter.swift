//
//  SecondPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CreatePresenter {
    
    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func presentNextVC() {
        viewController?.navigationController?.pushViewController(PickerAssembly.createModule(), animated: true)
    }
}

