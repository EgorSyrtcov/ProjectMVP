//
//  FirstPresenter.swift
//  Test
//
//  Created by Egor Syrtcov on 09/02/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit

class MainPresenter {
    
    private weak var view: MainViewController!
    
    init(view: MainViewController) {
        self.view = view
    }
    
    func viewDidLoad() {
        view.iconsModel = []
    }
    
    func didSelectRowAt(indexPath: IndexPath) {
        print("👾", indexPath.row)
    }
    
    func presentSecondVC() {
        
        let storyBoard = UIStoryboard(name: "CreateViewController", bundle: nil)
        guard let viewController = storyBoard
            .instantiateViewController(withIdentifier: "CreateViewController") as? CreateViewController else { return }
        
        viewController.presenter = CreatePresenter(view: viewController)
        
        view.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
