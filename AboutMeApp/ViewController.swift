//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 6.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    let username = "User"
    let password = "Password"
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 20
    }
    
    @IBAction func forgotUsernameOrPassButtonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(with: "Oops!", and: "Your username is \(username)")
        } else if sender.tag == 1 {
            showAlert(with: "Oops!", and: "Your password is \(password)")
        }
    }
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        
    }
    
    private func  showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

