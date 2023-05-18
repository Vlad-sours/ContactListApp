//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Vlad on 18.5.23..
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private var contactList = Person.getContactList()
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactList", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else {return}
        contactDetailsVC.contact = contactList[indexPath.row]
    }
}
