//
//  MainViewController.swift
//  Test
//
//  Created by Egor Syrtcov on 08/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

enum Properties: String {
    case MainCellId
    case PickIconCellId
}

class MainViewController: UIViewController {
    var iconsModel: [Task]? = []
    var presenter: MainPresenter!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func addTaskButton(_ sender: UIBarButtonItem) {
        presenter.presentSecondVC()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return iconsModel?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: Properties.MainCellId.rawValue)
        let icon = iconsModel?[indexPath.row]
        cell.textLabel?.text = icon?.name
        cell.imageView?.image = UIImage(named: icon?.imageName ?? "Checklist")
        return cell
    }
}
