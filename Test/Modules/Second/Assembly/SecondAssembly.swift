//
//  SecondAssembly.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class SecondAssembly {
    
    class func createModule() -> SecondViewController {
        
        let storyBoard = UIStoryboard(name: "SecondViewController", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let presenter = SecondPresenter(viewController: viewController)
        viewController.interactor = SecondInteractor(presenter: presenter)
        
        return viewController
    }
}
