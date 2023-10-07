//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 6.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomMesage: UILabel!
    @IBOutlet weak var smile: UILabel!
    
    var welcome: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomMesage.text = "Welcome, " +  welcome
        smile.text = "👋"
        smile.font = UIFont.systemFont(ofSize: 70)
    }
    
    @IBAction func logOutButtonPressed() {
    }
    
}
