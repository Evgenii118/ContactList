//
//  Person.swift
//  ContactList
//
//  Created by Ewgeniy Izyurov on 13.12.2024.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
   
    
    static func getPerson() -> [Person] {
        let array =
        [
            Person.init(
                name: getName(),
                lastName: getLastName(),
                phone: getPhone(),
                email: getEmail()
            )
        
        ]
        return array
    }
    
    static func getPhone() -> String {
        var dataStore = DataStore()
        return dataStore.phones.removeFirst()
    }
    
    static func getName() -> String {
        var dataStore = DataStore()
        return dataStore.names.removeFirst()
    }
    
    static func getLastName() -> String {
        var dataStore = DataStore()
        return dataStore.lastNames.removeFirst()
    }
    
    static func getEmail() -> String {
        var dataStore = DataStore()
        return dataStore.emails.removeFirst()
    }
}

