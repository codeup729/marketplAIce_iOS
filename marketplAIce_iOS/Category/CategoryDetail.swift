//
//  CategoryDetail.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import SwiftUI

struct CategoryDetail: View {
    @Environment(AIData.self) var data
    var category: Category
    var filteredData: [DataModel] {
        data.aiData.filter { $0.category ==  category.name.lowercased()}
    }
    @State private var selectedIndex = 0
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                ForEach(filteredData.indices, id: \.self) { index in
                    DetailView(data: filteredData[index])
                        .frame(width: UIScreen.main.bounds.width, height: 400)
//                        .background(RoundedRectangle(cornerRadius: 20).fill(Color(.systemGray6)))
                        .padding(.horizontal, 20)
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always)) // Scrollable dots
            
            Spacer()
        }
        .navigationTitle("\(category.name)")
    }
}

#Preview {
    CategoryDetail(category: Category(name: "Language"))
        .environment(AIData())
}
