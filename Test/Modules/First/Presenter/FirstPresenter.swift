//
//  FirstPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class FirstPresenter {
    
    private weak var viewController: UINavigationController?
    
    init(viewController: UINavigationController) {
        self.viewController = viewController
    }
    
    func pullName() {
        print("Hello Egor")
    }
    
    func presentSecondVC() {
        viewController?.pushViewController(SecondAssembly.createModule(), animated: true)
        print(1234)
    }
    
}
