//
//  SecondAssembly.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CreateAssembly {
    
    class func createModule() -> CreateViewController {
        
        let storyBoard = UIStoryboard(name: "CreateViewController", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "CreateViewController") as! CreateViewController
        viewController.presenter = CreatePresenter(viewController: viewController)
        
        return viewController
    }
}
