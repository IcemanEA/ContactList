//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getDataFromStore()
    
    override func viewDidLoad() {
        viewControllers?.forEach { viewController in
            guard let navigationVC = viewController as? UINavigationController else { return }
            
            if let personListVC = navigationVC.topViewController as? PersonListViewController {
                personListVC.persons = persons
            }
            
            if let personSectionVC = navigationVC.topViewController as? PersonSectionsViewController {
                personSectionVC.persons = persons
            }
        }
    }
}
