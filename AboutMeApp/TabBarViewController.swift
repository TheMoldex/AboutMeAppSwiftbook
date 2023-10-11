//
//  TabBarViewController.swift
//  AboutMeApp
//
//  Created by Денис Сташков on 11.10.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    // MARK: - Private func's
    private func setTabBar() {
        let tabBarAppearance =  UITabBarAppearance()
        tabBarAppearance.configureWithDefaultBackground()
        tabBar.standardAppearance = tabBarAppearance
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
