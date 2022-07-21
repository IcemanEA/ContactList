//
//  Person.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var name: String {
        "\(firstName) \(lastName)"
    }
    
    static func getDataFromStore() -> [Person] {
        let dataStore = DataStore()
        var persons: [Person] = []
        
        let firstNamesFromDS = dataStore.firstNames.shuffled()
        let lastNamesFromDS = dataStore.lastNames.shuffled()
        let phonesFromDS = dataStore.phones.shuffled()
        let emailFromDS = dataStore.emails.shuffled()
        
        for index in 0..<firstNamesFromDS.count {
            let person = Person(firstName: firstNamesFromDS[index],
                                lastName: lastNamesFromDS[index],
                                email: emailFromDS[index],
                                phone: phonesFromDS[index])
            persons.append(person)
        }

        return persons
    }
}
