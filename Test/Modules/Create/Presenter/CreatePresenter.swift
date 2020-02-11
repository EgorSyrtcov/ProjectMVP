//
//  SecondPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class CreatePresenter {
    
    private weak var view: CreateViewController!
    
    init(view: CreateViewController) {
        self.view = view
    }
    
    func viewDidLoad() {
        
    }
    
    func presentNextVC() {
        view?.navigationController?.pushViewController(PickerAssembly.createModule(), animated: true)
    }
    
    func createTask() {
        let taskText = view.nameTaskTextView.text
        let taskIcon = "imegename"
        let task = Task(imageName: taskIcon, name: taskText)
        
        print("Task added", task.name?.isEmpty ?? false ? "Error" : task.name ?? "Error" )
    }
}

