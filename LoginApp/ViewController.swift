//
//  ViewController.swift
//  LoginApp
//
//  Created by Владислав Голосов on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginText: UITextField!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var forgotUserName: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func loginTapped(_ sender: UIButton) {
        if loginText.text == "User" && passwordText.text == "Password" {
        performSegue(withIdentifier: "loginSegue", sender: nil)
        }
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationView = segue.destination as? LoginViewController else {return}
        destinationView.login = loginText.text
    }
    }
    
    

