//
//  SplashScreen.swift
//  Test
//
//  Created by Radomyr Sidenko on 11.02.2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import Foundation
import UIKit

class SplashScreen: UIViewController {
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        loader.stopAnimating()
        
        let storyBoard = UIStoryboard(name: "MainViewController", bundle: nil)
        guard let viewController = storyBoard.instantiateViewController(withIdentifier: "MainViewController") as? MainViewController else { return }
        viewController.presenter = MainPresenter(view: viewController)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
