//
//  FoodList.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import SwiftUI

struct AppetizerList: View {
    
    @StateObject var viewModel = AppetizerViewModel()
    
    var body: some View {
        NavigationView{
            //MARK: List initialize array of appetizers to list our mock data
            List(viewModel.appetizers) {
                apppetizer in
                AppetizerListCell(apppetizer: apppetizer)
            }
            .navigationTitle("Appetizers")
        }
        //Similare view will appear
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) {
            alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dimissButton)
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerList()
    }
}
