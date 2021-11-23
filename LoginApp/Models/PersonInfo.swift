//
//  PersonInfo.swift
//  LoginApp
//
//  Created by Владислав Голосов on 31.10.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    static func getUserData() -> User {
        User(login: "User",
             password: "Password",
             person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let email: String
    let proffesion: String
    let hobbie: String
    
    static func getPerson() -> Person {
        Person(name: "Vladislav",
               surname: "Golosov",
               age: 28,
               email: "v.golosoff@gmail.com",
               proffesion: "Regional Sales Manager",
               hobbie: "Football")
    }
}

