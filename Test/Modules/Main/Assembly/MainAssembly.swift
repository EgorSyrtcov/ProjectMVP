//
//  FirstAssembly.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class MainAssembly {
    
    class func createModule() -> UINavigationController {
        let storyBoard = UIStoryboard(name: "MainViewController", bundle: nil)
        let mainvc = storyBoard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let navigationController = UINavigationController(rootViewController: mainvc)
        mainvc.presenter = MainPresenter(viewController: navigationController)
        return navigationController
    }
}
