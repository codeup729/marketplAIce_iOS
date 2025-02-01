//
//  DetailView.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import SwiftUI

struct DetailView: View {
    @Environment(AIData.self) var aiData
    var data: DataModel
    var body: some View {
        VStack(spacing: 20) {
            data.image
                .font(.system(size: 60))
                .foregroundColor(.blue)
            
            Text(data.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(data.description)
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal)
            
            VStack(spacing: 15) {
                DetailRow(title: "Speed", value: "\(data.speed)%")
                DetailRow(title: "Accuracy", value: "\(data.accuracy)%")
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Features")
                        .font(.headline)
                    ForEach(data.features, id: \.self) { feature in
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                            Text(feature)
                        }
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemGray6)))
                .padding(.horizontal)
            }
            .padding()
            
            Spacer()
            
            // Price at the bottom in the center with bold font
            Text(data.price)
                .font(.title2)
                .fontWeight(.bold)
                .padding()
        }
        .padding()
    }
}

#Preview {
    DetailView(data: AIData().aiData[0])
        .environment(AIData())
}
