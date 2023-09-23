//
//  User.swift
//  Appetizers
//
//  Created by Niclas on 23.09.23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
