//
//  ListTwoViewController.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

import UIKit

class ListTwoViewController: UITableViewController {

    var personsList: [Persons] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        tableView.sectionHeaderHeight = 30
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personsList[section].fullname
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personListTwoRowOne", for: indexPath)
        let person = personsList[indexPath.section]
        
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: Image.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Image.email.rawValue)
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
