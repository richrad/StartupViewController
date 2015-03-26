//
//  LoginViewController.swift
//  StartupViewController
//
//  Created by Richard Allen on 3/26/15.
//  Copyright (c) 2015 Lapdog. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var rootNavigationController: RootNavigationController?
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "UserLoggedIn")
        self.rootNavigationController?.showMainViewController()
    }
    
}
