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
    @Published var alertItem: AlertItem?

    func getAppetizers() {
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                switch result {
                case.success(let appetizers):
                    self.appetizers = appetizers
                case.failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    
                    case .invailidURL:
                        alertItem = AlertContext.invalidURL
                    
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
