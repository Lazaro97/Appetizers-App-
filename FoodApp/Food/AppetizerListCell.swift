//
//  AppetizerListCell.swift
//  Food
//
//  Created by Lazaro Ambrosio on 3/3/21.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let apppetizer: Appetizer
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fill )
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            // Spacing is for the bacon label and money.
            VStack(alignment: .leading, spacing: 10 ) {
                Text(apppetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(apppetizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            //padding between v and hstack
            .padding(5)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(apppetizer: MockData.sampleAppetizer)
    }
}
