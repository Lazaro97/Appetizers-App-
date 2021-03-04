//
//  FoodList.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import SwiftUI

struct AppetizerList: View {
    var body: some View {
        NavigationView{
            //MARK: List initialize array of appetizers to list our mock data
            List(MockData.appetizers) {
                apppetizer in
                AppetizerListCell(apppetizer: apppetizer)
            }
            .navigationTitle("Appetizers")
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerList()
    }
}
