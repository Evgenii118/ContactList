//
//  DataStore.swift
//  ContactList
//
//  Created by Ewgeniy Izyurov on 15.12.2024.
//

import Foundation

struct DataStore {
    var names: Set = ["Mark", "Pol", "Anna", "Peter", "Steve", "Tim", "Tim"]
    var lastNames: Set = ["Jobs", "Izyurov", "Petrov", "Cook", "Taylor", "Petrov", "Mironov"]
    var phones: Set = [
        "79826415998",
        "79049815619",
        "790498167182",
        "7832323762",
        "033",
        "022",
        "022"
    ]
    var emails: Set = [
        "jim@mail.ru",
        "help@mail.ru",
        "2@mail.ru",
        "3@mail.ru",
        "5@mail.ru",
        "help@izyapp.ru",
        "3@mail.ru"
    ]
}
