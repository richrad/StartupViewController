//
//  MainViewController.swift
//  StartupViewController
//
//  Created by Richard Allen on 3/26/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var rootNavigationController: RootNavigationController?
    
    @IBAction func logoutButtonPressed(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "UserLoggedIn")
        self.rootNavigationController?.showLoginViewController()
    }

}
