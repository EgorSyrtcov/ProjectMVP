//
//  SecondViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    var presenter: CreatePresenter!

    @IBOutlet weak var nameTaskTextView: UITextView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        
    }

    @IBAction func selectionIconButton(_ sender: UIButton) {
        presenter.presentNextVC()
        
    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        presenter.createTask()
    }
}
