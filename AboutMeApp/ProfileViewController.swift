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
    
    var nickname: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        nicknameOutlet.text = nickname
    }
}
