//
//  Appetizer.swift
//  Appetizers
//
//  Created by Niclas on 22.09.23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let carbs: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 10.5,
                                           imageURL: "",
                                           calories: 88,
                                           carbs: 100,
                                           protein: 50)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
