//
//  Food.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import Foundation
// Identifiable becuase we have mock data that involves with id
struct Appetizer: Decodable, Identifiable {
  let name: String
  let calories: Int
  let price: Double
  let id: Int
  let carbs: Int
  let imageURL: String
  let protein: Int
  let description: String
}

struct AppetizerResponse: Decodable {
  let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(name: "Bacon Sandwich", calories: 300, price: 2.00, id: 0001, carbs: 200, imageURL: "", protein: 99, description: "Description of my sandwichs")
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
}

