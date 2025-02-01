//
//  marketplAIce_iOSApp.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 31/01/25.
//

import SwiftUI

@main
struct marketplAIce_iOSApp: App {
    @State private var aiData = AIData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(aiData)
        }
    }
}
