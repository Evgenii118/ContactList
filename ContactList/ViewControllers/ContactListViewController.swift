//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Ewgeniy Izyurov on 11.12.2024.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var persons = [Person]()
    
    let dataStore = DataStore()
    
    private var names: Set<String> = []
    private var lastNames: Set<String> = []
    private var phones: Set<String> = []
    private var emails: Set<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getNames()
        getPersons()
        
    }
    
    private func getPersons() {
        
        for _ in 0..<dataStore.names.count {
            persons.append(
                Person(
                    name: names.popFirst() ?? "",
                    lastName: lastNames.popFirst() ?? "",
                    phone: phones.popFirst() ?? "",
                    email: emails.popFirst() ?? ""
                )
            )
        }
        
    }
    
    private func getNames() {
        for name in dataStore.names {
            names.insert(name)
        }
        
        for lastName in dataStore.lastNames {
            lastNames.insert(lastName)
        }
        
        for phone in dataStore.phones {
            phones.insert(phone)
        }
        
        for email in dataStore.emails {
            emails.insert(email)
        }
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? ContactDetailsViewController
        detailsVC?.person = sender as? Person
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].name
        content.secondaryText = persons[indexPath.row].lastName
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}

// MARK: - UITableViewDelegate
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        performSegue(withIdentifier: "showDetails", sender: person)
    }
}

