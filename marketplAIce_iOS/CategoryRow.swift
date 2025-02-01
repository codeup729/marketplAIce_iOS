//
//  CategoryRow.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    var body: some View {
        HStack(spacing: 12) {
            category.image
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
//                .foregroundColor(category.color)
            
            Text(category.name)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.primary)
            
            Spacer()
            
//            Image(systemName: "chevron.right")
//                .font(.system(size: 14, weight: .semibold))
//                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    CategoryRow(category: Category(name: "Language"))
}
