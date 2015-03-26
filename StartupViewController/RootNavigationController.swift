//
//  RootNavigationController.swift
//  StartupViewController
//
//  Created by Richard Allen on 3/26/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {
    
    let mainStoryboard  = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
    let loginIdentifier = "LoginViewController"
    let mainIdentifier  = "MainViewController"
    
    var mainViewController: MainViewController?
    var loginViewController: LoginViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (NSUserDefaults.standardUserDefaults().boolForKey("UserLoggedIn")) {
            self.showMainViewController()
        } else {
            self.showLoginViewController()
        }
    }

    func showLoginViewController() {
        self.loginViewController = mainStoryboard.instantiateViewControllerWithIdentifier(loginIdentifier) as? LoginViewController
        self.loginViewController?.rootNavigationController = self
        self.setViewControllers([self.loginViewController!], animated: true)
    }
    
    func showMainViewController() {
        self.mainViewController = mainStoryboard.instantiateViewControllerWithIdentifier(mainIdentifier) as? MainViewController
        self.mainViewController?.rootNavigationController = self
        self.setViewControllers([self.mainViewController!], animated: true)
    }
}