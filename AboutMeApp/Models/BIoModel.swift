//
//  BIoViewModel.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 10.10.2023.
//

struct Bio {
    let title: String
    let text: String
}

extension Bio {
    static func getModel() -> Bio {
        Bio(title: "", text: "")
    }
}
