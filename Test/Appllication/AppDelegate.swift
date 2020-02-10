//
//  AppDelegate.swift
//  Test
//
//  Created by Egor Syrtcov on 05/01/2020.
//  Copyright © 2020 Egor Syrtcov. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        startShow()
        
        return true
    }
    
    private func startShow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        window?.rootViewController = MainAssembly.createModule()
        window?.makeKeyAndVisible()
    }
}

