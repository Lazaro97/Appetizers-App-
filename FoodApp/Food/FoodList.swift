//
//  FoodList.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import SwiftUI

struct FoodList: View {
    var body: some View {
        NavigationView{
            Text("Food List")
                .navigationTitle("😀Foods List")
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
