//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet private weak var profileImage: UIImageView!
    @IBOutlet private weak var nicknameOutlet: UILabel!
    @IBOutlet private weak var name: UILabel!
    @IBOutlet private weak var surname: UILabel!
    @IBOutlet private weak var style: UILabel!
    @IBOutlet private weak var profileTitle: UINavigationItem!
    
    // MARK: - Public properties
    var profileModel: LoginModel!
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.bioModel = profileModel
    }
    
    // MARK: - Private func's
    private func setView() {
        profileTitle.title = profileModel.account.title
        profileImage.image = UIImage(named: profileModel.account.image)
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        name.text = profileModel.account.name
        surname.text = profileModel.account.surname
        style.text = profileModel.account.style
        nicknameOutlet.text = profileModel.username
    }
}
