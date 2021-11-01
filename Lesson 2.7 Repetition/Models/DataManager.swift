//
//  DataManager.swift
//  Lesson 2.7 Repetition
//
//  Created by Marat Shagiakhmetov on 01.11.2021.
//

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Ivan", "Fedor", "Nikolay", "Artem", "Marat", "Semen", "Nail", "Sergey",
        "Moisey", "Svyatoslav"
    ]
    
    let surname = [
        "Ivanov", "Emelyanenko", "Golubev", "Hitrov", "Shagiakhmetov", "Durov",
        "Petrov", "Kuznetsov", "Saba", "Alesenko"
    ]
    
    let emails = [
        "Ivanov@gmail.com", "Emelyanenko@gmail.com", "Golubev@gmail.com",
        "Hitrov@gmail.com", "Shagiakhmetov@gmail.com", "Durov@gmail.com",
        "Petrov@gmail.com", "Kuznetsov@gmail.com", "Saba@gmail.com",
        "Alesenko@gmail.com"
    ]
    
    let phones = [
        "9037564833", "9064951100", "9268246571", "9038883322", "9038941230",
        "9267630945", "9267845520", "9117305913", "9024937726", "9267309451"
    ]
    
    private init() {}
}
