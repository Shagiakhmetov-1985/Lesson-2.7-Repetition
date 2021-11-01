//
//  MainTabBarViewController.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    let persons = Persons.getPersonList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(persons: persons)
    }
    
    private func setupViewControllers(persons: [Persons]) {
        let listOneVC = viewControllers?.first as! ListOneViewController
        let listTwoVC = viewControllers?.last as! ListTwoViewController
        
        listOneVC.personsList = persons
        listTwoVC.personsList = persons
    }
}
