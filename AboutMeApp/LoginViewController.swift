//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 6.10.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet private weak var usernameTF: UITextField!
    @IBOutlet private weak var passwordTF: UITextField!
    @IBOutlet private weak var logInButton: UIButton!
    
    // MARK: - Private properties
    let loginData = LoginModel.getModel()
    
    // MARK: - Overrides
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if usernameIsValid(usernameTF.text), passwordIsValid(passwordTF.text) {
            return true
        } else {
            showAlert(with: "Oops!", and: "Username or password is incorrect", textField: passwordTF)
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.model = loginData
            } else if let  navigationController = viewController as? UINavigationController {
                guard let profileVC =  navigationController.topViewController as? ProfileViewController else { return }
//                guard let bioVC = navigationController.viewControllers as? BioViewController else { return }
                profileVC.profileModel = loginData
//                bioVC.bioModel = loginData
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func forgotUsernameOrPassButtonPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Oops!", and: "Your username is \(loginData.username) 😉")
        : showAlert(with: "Oops!", and: "Your password is \(loginData.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private funcs
    private func  showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            self.passwordTF.text = ""
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}
// MARK: - extension
extension LoginViewController {
    private func usernameIsValid( _ username: String?) -> Bool {
        username == loginData.username
    }
    private func passwordIsValid(_ password: String?) -> Bool {
        password == loginData.password
    }
    
}
