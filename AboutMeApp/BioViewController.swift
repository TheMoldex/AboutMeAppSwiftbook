//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

import UIKit

class BioViewController: UIViewController {
    @IBOutlet weak var profileTitle: UINavigationItem!
    @IBOutlet weak var bioTextView: UITextView!
    
    var bioModel: LoginModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTitle.title = bioModel.account.bio.title
        bioTextView.text = bioModel.account.bio.text
    }
}
