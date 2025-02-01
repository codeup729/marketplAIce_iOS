//
//  ContentView.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 31/01/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(AIData.self) var data
    let category: [Category] = [Category(name: "Language"), Category(name: "Image"), Category(name: "Audio"), Category(name: "Video"), Category(name: "Code"), Category(name: "Agent")]
    var body: some View {
        NavigationStack {
            VStack {
                Image("image")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(25)
                    .frame(width: 250, height: 250)
                Text("What are you looking for today?")
                    .font(.title)
                    .fontWeight(.semibold)
                List {
                    ForEach(category, id: \.name){
                        category in
                        NavigationLink {
                            CategoryDetail(category: category)
                        } label: {
                            CategoryRow(category: category)
                        }
                    }
                }
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(AIData())
}
