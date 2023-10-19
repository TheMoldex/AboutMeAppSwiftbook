//
//  Profile.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

struct Profile {
    let title: String
    let image: String
    let name: String
    let surname: String
    let style: String
    let bio: Bio
}
extension Profile {
    static func getModel() -> Profile {
        Profile(title: "", image: "", name: "", surname: "", style: "", bio: Bio(title: "", text: ""))
    }
}
