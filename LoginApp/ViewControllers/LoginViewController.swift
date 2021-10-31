//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Владислав Голосов on 26.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    var login: String?
    @IBOutlet var welcomeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard login != nil else { return }
        welcomeLabel.text = "Hello, \(user.name) \(user.surname)"
    }
    


}
