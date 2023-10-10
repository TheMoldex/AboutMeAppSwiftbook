//
//  ProfileViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nicknameOutlet: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var surname: UILabel!
    @IBOutlet weak var style: UILabel!
    @IBOutlet weak var profileTitle: UINavigationItem!
    
    var profileModel: LoginModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.bioModel = profileModel
    }
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
