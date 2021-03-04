//
//  AppetizerViewModel.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import Foundation
import SwiftUI

final class AppetizerViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case.success(let appetizers):
                    self.appetizers = appetizers
                case.failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
