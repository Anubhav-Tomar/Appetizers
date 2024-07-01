//
//  User.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 30/06/24.
//

import Foundation

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
}
