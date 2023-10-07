//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 6.10.2023.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet private weak var usernameTF: UITextField!
    @IBOutlet private weak var passwordTF: UITextField!
    @IBOutlet private weak var logInButton: UIButton!
    
    // MARK: - Private properties
    private let username = "User"
    private let password = "Password"
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 20
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if usernameIsValid(usernameTF.text), passwordIsValid(passwordTF.text) {
            return true
        }
        else {
            showAlert(with: "Oops!", and: "Username or password is incorrect")
            return false
        }
        /*  к тому моменту как я написал свое решение, я увидел, что в ТЗ есть метод, который надо использовать,
         по сути у меня получилось около того же , только ,наверно, менее безопасно, потому что я не делал опциональную
         привязку, если можно пару слов в фидбеке о моем решении*/
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcome = username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func forgotUsernameOrPassButtonPressed(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(with: "Oops!", and: "Your username is \(username) 😉")
        } else if sender.tag == 1 {
            showAlert(with: "Oops!", and: "Your password is \(password) 😉")
        }
    }
    @IBAction func logInButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private funcs
    private func  showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}
// MARK: - extension
extension LoginViewController {
    private func usernameIsValid( _ username: String?) -> Bool {
        username == "User"
    }
    private func passwordIsValid(_ password: String?) -> Bool {
        password == "Password"
    }
    
}
