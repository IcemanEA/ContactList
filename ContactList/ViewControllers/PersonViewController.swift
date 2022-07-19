//
//  PersonViewController.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.name
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
