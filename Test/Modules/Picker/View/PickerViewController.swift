//
//  ThreeViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 2/10/20.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

typealias block = ((_ task: Task?) -> Void)

class PickerViewController: UIViewController {
    
    let tasksModel = DataManager.createIcon()
    var complition: (block)?

    @IBOutlet weak var tableView: UITableView!
}

extension PickerViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasksModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: Properties.PickIconCellId.rawValue)
        let task = tasksModel[indexPath.row]
        cell.textLabel?.text = task.imageName
        cell.imageView?.image = UIImage(named: task.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let task = tasksModel[indexPath.row]
        complition?(task)
        navigationController?.popViewController(animated: true)
    }
}
