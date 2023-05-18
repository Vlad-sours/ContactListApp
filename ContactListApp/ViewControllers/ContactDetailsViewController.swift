//
//  ContactDetailsViewController.swift
//  ContactListApp
//
//  Created by Vlad on 18.5.23..
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
    }    
}
