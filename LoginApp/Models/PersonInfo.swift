//
//  PersonInfo.swift
//  LoginApp
//
//  Created by Владислав Голосов on 31.10.2021.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var age: Int
    var email: String
    var login: String
    var password: String
    var proffesion: String
    var hobbie: String
}

let user = Person(name: "Vladislav",
                  surname: "Golosov",
                  age: 28,
                  email: "v.golosoff@gmail.com",
                  login: "Username",
                  password: "Password",
                  proffesion: "iOS- Developer",
                  hobbie: "Football")
