//
//  FirstViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var interactor: FirstInteractor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func pullNameButton(_ sender: UIButton) {
        interactor.pullName()
    }
    
    
    @IBAction func nextVCButton(_ sender: UIButton) {
        interactor.presentSecondVC()
    }
    
}
