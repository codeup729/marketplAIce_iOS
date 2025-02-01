//
//  AIData.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import Foundation
import SwiftUI

@Observable
class AIData {
    var aiData: [DataModel] = fetchData("models.json")
}

func fetchData<T: Decodable>(_ filename: String) -> T {
    var data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError( "Couldn't find \(filename)")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename): \(error)")
    }
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }catch{
        fatalError("Couldn't decode \(filename): \(error)")
        
    }
}
