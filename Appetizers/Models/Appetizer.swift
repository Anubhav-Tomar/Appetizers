//
//  Appetizer.swift
//  Appetizers
//
//  Created by Anubhav Tomar on 28/06/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable  {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Abc",
                                           description: "hahaha",
                                           price: 123,
                                           imageURL: "",
                                           calories: 44,
                                           protein: 2,
                                           carbs: 23)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItem1 = Appetizer(id: 1,
                                           name: "Abc",
                                           description: "hahaha",
                                           price: 123,
                                           imageURL: "",
                                           calories: 44,
                                           protein: 2,
                                           carbs: 23)
    
    static let orderItem2 = Appetizer(id: 2,
                                           name: "Abc",
                                           description: "haha",
                                           price: 123,
                                           imageURL: "",
                                           calories: 44,
                                           protein: 2,
                                           carbs: 23)
    
    static let orderItem3 = Appetizer(id: 3,
                                           name: "Abc",
                                           description: "ha",
                                           price: 123,
                                           imageURL: "",
                                           calories: 44,
                                           protein: 2,
                                           carbs: 23)
    
    static let orderItems = [orderItem1, orderItem2, orderItem3]
}
