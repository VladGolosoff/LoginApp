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
    @IBOutlet var forgotUsernameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
   let user = mainUser

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }

    
    private func showAlert(title: String, messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let allCorrect = UIAlertAction(title: "OK", style: .default) {_ in
            self.passwordText.text = ""
        }
        alert.addAction(allCorrect)
        present(alert , animated: true)
    }
    
    @IBAction func forgotNameTap(_ sender: UIButton) {
        showAlert(title: "Oops!", messege: "Your name is \(user.name)")
    }
    @IBAction func forgotPassButton(_ sender: UIButton) {
        showAlert(title: "Oops!", messege: "Your password is \(user.password)")
    }
    
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        if loginText.text == user.login && passwordText.text == user.password {
            performSegue(withIdentifier: "loginSegue", sender: nil)
        } else {
            showAlert(title: "Invalid username or password!",
                      messege: "Please, enter correct username or password")
        }
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let LogInViewController = viewController as? LoginViewController {
                LoginViewController.= mainUser
            } else if let navigationViewController = viewController as? UINavigationController {
                let MoreInfoViewController = navigationViewController.topViewController as! MoreInfoViewController
               MoreInfoViewController.user = user
            }
        }
     
    }
    
   @IBAction func unwind(for segue: UIStoryboardSegue) {
       guard segue.source is LoginViewController else {return}
            loginText.text = ""
            passwordText.text = ""
    
            }
    }
    
    

