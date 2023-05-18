//
//  Person.swift
//  ContactListApp
//
//  Created by Vlad on 18.5.23..
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
            "\(name) \(surname)"
        }
    static func getContactList() -> [Person] {
            
            var persons: [Person] = []
            
        let name = DataStore.get.names.shuffled()
        let surname = DataStore.get.surNames.shuffled()
            let email = DataStore.get.emails.shuffled()
        let phone = DataStore.get.phoneNumbers.shuffled()
            
            let iterationCount = min(
                name.count,
                surname.count,
                email.count,
                phone.count
            )
            
            for index in 0..<iterationCount {
                let person = Person(
                    name: name[index],
                    surname: surname[index],
                    phoneNumber: phone[index],
                    email: email[index]
                )
                
                persons.append(person)
            }
            
            return persons
        }
    }

