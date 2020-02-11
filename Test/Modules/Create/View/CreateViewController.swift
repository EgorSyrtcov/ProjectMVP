//
//  SecondViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

protocol CreateViewControllerDelegate: class {
    func getData(with task: Task)
}

class CreateViewController: UIViewController {
    var task: Task?
    var presenter: CreatePresenter!

    @IBOutlet weak var nameTaskTextView: UITextView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func selectionIconButton(_ sender: UIButton) {
        presenter.presentNextVC()
    }
    @IBAction func saveButton(_ sender: UIButton) {
    }
}

extension CreateViewController: CreateViewControllerDelegate {
    func getData(with task: Task) {
        print(task)
    }
}
