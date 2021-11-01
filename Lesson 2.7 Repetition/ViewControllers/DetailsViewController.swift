//
//  DetailsViewController.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    var person: Persons!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = person.phone
        labelTwo.text = person.email
        title = person.fullname
    }

}
