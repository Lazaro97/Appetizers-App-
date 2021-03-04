//
//  Alert.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dimissButton: Alert.Button
}


struct AlertContext {
    static let invalidData = AlertItem(title: Text ("Server Error"),
                                       message: Text ("Data recieved from the server was invalid. Please contact support"),
                                       dimissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text ("Server Error"),
                                       message: Text ("Invalid response from the server. Please try again later"),
                                       dimissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text ("Server Error"),
                                       message: Text ("Issue connecting with the servcer. If this persists, please try again"),
                                       dimissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text ("Server Error"),
                                       message: Text ("Unable to complete yout request at this time. Please try again"),
                                       dimissButton: .default(Text("Ok")))
}
