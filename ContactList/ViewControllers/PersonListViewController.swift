//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

import UIKit

class PersonListViewController: UITableViewController, UINavigationControllerDelegate {

    var persons: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.name
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personVC.person = persons[indexPath.row]
    }
}
