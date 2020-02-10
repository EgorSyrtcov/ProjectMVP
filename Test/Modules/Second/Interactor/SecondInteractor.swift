//
//  SecondInterector.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation

class SecondInteractor {
    
    private let presenter: SecondPresenter
    
    init(presenter: SecondPresenter) {
        self.presenter = presenter
    }
    
    func presentBackVC() {
       presenter.presentBackVC()
    }
}
