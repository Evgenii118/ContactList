//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Ewgeniy Izyurov on 12.12.2024.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = "\(person.name) \(person.lastName)"
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
    

}
