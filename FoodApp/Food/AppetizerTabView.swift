//
//  ContentView.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import SwiftUI
//MARK: Here is the creation of tabbar controller equivalent.
struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerList()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
            }
        }
        .accentColor(Color(UIColor.red))
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
