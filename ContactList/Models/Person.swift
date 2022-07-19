//
//  Person.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

struct Person {
    var lastName: String
    var firstName = ""
    var email = ""
    var phone = ""
    
    var name: String {
        "\(firstName) \(lastName)"
    }
    
    init(lastName: String) {
        self.lastName = lastName
    }
    
    static func getDataFromStore() -> [Person]? {
        let dataStore = DataStore()
        var persons: [Person] = []
        
        for name in dataStore.secondNames.shuffled() {
            persons.append(Person(lastName: name))
        }
        
        for (firstName, (personIndex, _)) in
            zip(dataStore.firstNames.shuffled(), persons.enumerated())
        {
            persons[personIndex].firstName = firstName
        }
        
        for (phone, (personIndex, _)) in
                zip(dataStore.phones.shuffled(), persons.enumerated())
        {
            persons[personIndex].phone = phone
        }
    
        for (email, (personIndex, _)) in
            zip(dataStore.firstNames.shuffled(), persons.enumerated())
        {
            persons[personIndex].email = email
        }
        
        return persons
    }
}
