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
        super.viewDidLoad()
        
        navigationController?.visibleViewController?.title = "Person List"
        
        viewControllers?.forEach { viewController in
//            guard let navigationVC = viewController as? UINavigationController else { return }
                        
            if let personListVC = viewController as? PersonListViewController {
                personListVC.persons = persons
            } else if let personSectionVC = viewController as? PersonSectionsViewController {
                personSectionVC.persons = persons
            }
        }
    }
}
