//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 6.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var welcomeMessage: UILabel!
    
    // MARK: - Public properties
    var welcomeModel: User!
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Welcome, " + welcomeModel.username
    }
}
