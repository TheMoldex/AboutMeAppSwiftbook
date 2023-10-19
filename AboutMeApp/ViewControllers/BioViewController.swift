//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

import UIKit

final class BioViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet private weak var profileTitle: UINavigationItem!
    @IBOutlet private weak var bioTextView: UITextView!
    
    // MARK: - Public property
    var bioModel: User!
    
    // MARK: - overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        profileTitle.title = bioModel.account.bio.title
        bioTextView.text = bioModel.account.bio.text
    }
}
