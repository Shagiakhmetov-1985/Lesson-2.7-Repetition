//
//  Persons.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

struct Persons {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Persons {
    static func getPersonList() -> [Persons] {
        var dataManagers: [Persons] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surname.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let person = Persons(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index])
            
            dataManagers.append(person)
        }
        
        return dataManagers
    }
}

enum Image: String {
    case phone = "phone"
    case email = "tray"
}
