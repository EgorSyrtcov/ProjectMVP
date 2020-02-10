//
//  FirstAssembly.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class FirstAssembly {
    
    class func createModule() -> UINavigationController {
        
        let storyBoard = UIStoryboard(name: "FirstViewController", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.presenter = FirstPresenter(viewController: navigationController)
        
        return navigationController
    }
}
