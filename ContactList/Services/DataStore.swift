//
//  DataStore.swift
//  ContactList
//
//  Created by Egor Ledkov on 19.07.2022.
//

class DataStore {
    let firstNames: [String]
    let secondNames: [String]
    let phones: [String]
    let emails: [String]
    
    init() {
        firstNames = [
            "firstName",
            "firstName2"
        ]
        secondNames = [
            "secondName",
            "secondName2"
        ]
        phones = [
            "phone",
            "phone2"
        ]
        emails = [
            "email",
            "email2"
        ]
    }
}
