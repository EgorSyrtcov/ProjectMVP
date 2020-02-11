//
//  ThreeAssembly.swift
//  Test
//
//  Created by Egor Syrtcov on 2/10/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class PickerAssembly {
    
    class func createModule(delegate: CreateViewControllerDelegate?) -> PickerViewController {
        
        let storyBoard = UIStoryboard(name: "PickerViewController", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "PickerViewController") as! PickerViewController
        viewController.delegate = delegate
        return viewController
    }
}
