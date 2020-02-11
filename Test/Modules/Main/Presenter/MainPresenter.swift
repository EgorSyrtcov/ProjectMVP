//
//  FirstPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class MainPresenter {
    
    private weak var viewController: UINavigationController?
    
    init(viewController: UINavigationController) {
        self.viewController = viewController
    }
    
    func presentSecondVC() {
        viewController?.pushViewController(CreateAssembly.createModule(), animated: true)
    }
}
