//
//  Food.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import Foundation
struct Food: Codable {
  let name: String
  let calories: Int
  let price: Double
  let id: Int
  let carbs: Int
  let imageURL: String
  let protein: Int
  let description: String
}

struct FoodResponse: Codable {
  let request: [Food]
}

struct MockData {
    static let sampleAppetizer = Food(name: "Bacon Sandwich", calories: 300, price: 2.00, id: 0001, carbs: 200, imageURL: "", protein: 99, description: "Description of my sandwichs")
    
    static let appetizers = [sampleAppetizer,sampleAppetizer,sampleAppetizer,sampleAppetizer]
    
}

