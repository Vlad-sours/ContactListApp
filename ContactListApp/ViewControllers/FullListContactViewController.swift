//
//  FullListContactViewController.swift
//  ContactListApp
//
//  Created by Vlad on 18.5.23..
//

import UIKit

class FullListContactViewController: UITableViewController {
    
    private var contactList = Person.getContactList()
        
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int
                            ) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath
                          ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
                                                withIdentifier: "contactFullInfo",
                                                for: indexPath
                                                )
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullName
        content.secondaryText = contact.phoneNumber
        cell.contentConfiguration = content
        return cell
    }
}
