//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        var persons: [Person]?
        
        viewControllers?.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else { return }

            if let personVC = navigationVC.topViewController as? PersonListViewController {
                persons = personVC.persons
            }
            if let personVC = navigationVC.topViewController as? PersonSectionsViewController {
                personVC.persons = persons
            }
        }
    }
}
