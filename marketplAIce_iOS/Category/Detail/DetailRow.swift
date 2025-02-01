//
//  DetailRow.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import SwiftUI

struct DetailRow: View {
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
            Spacer()
            Text(value)
                .foregroundColor(.blue)
        }
        .padding(.vertical, 5)
        .padding(.horizontal)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
    }
}

#Preview {
    DetailRow(title: "Price", value: "$0.01/1K tokens")
}
