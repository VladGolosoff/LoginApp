//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Владислав Голосов on 26.10.2021.
//

import UIKit

class LoginViewController: UIViewController {
    var user: Person!
    @IBOutlet var welcomeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard user != nil else { return }
        welcomeLabel.text = "Hello, \(user.name) \(user.surname)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoViewController = segue.destination as? MoreInfoViewController else { return }
        moreInfoViewController.user = user
    }

}
