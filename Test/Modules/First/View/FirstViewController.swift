//
//  FirstViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var presenter: FirstPresenter!
    
    
    @IBAction func pullNameButton(_ sender: UIButton) {
         presenter.pullName()
    }
    
    @IBAction func nextVCButton(_ sender: UIButton) {
        presenter.presentSecondVC()
    }
}
