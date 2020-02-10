//
//  SecondViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var interactor: SecondInteractor!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func backVCButton(_ sender: UIButton) {
        interactor.presentBackVC()
    }
    
}
