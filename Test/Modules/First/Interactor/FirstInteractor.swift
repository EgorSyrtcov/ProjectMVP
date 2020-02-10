//
//  FirstInteractor.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

class FirstInteractor {
    
    private let presenter: FirstPresenter

    init(presenter: FirstPresenter) {
        self.presenter = presenter
    }
    
    func pullName() {
        print("Hello Egor")
    }
    
    func presentSecondVC() {
        presenter.presentSecondVC()
    }
}
