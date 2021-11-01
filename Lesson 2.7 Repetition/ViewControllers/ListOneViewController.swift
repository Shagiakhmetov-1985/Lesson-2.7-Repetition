//
//  ListOneViewController.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

import UIKit

class ListOneViewController: UITableViewController {

    var personsList: [Persons] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personListOne", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullname
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = personsList[indexPath.row]
        detailsVC.person = person
    }

}
