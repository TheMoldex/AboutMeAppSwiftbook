//
//  Welcome.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

import Foundation

struct WelcomeModel{
    let hello: String
}
extension WelcomeModel {
    static func sayHello () -> WelcomeModel {
        WelcomeModel(hello: "Welcome,")
    }
}
