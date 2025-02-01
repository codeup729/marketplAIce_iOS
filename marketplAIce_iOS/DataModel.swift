//
//  DataModel.swift
//  marketplAIce_iOS
//
//  Created by Anitej Srivastava on 01/02/25.
//

import Foundation
import SwiftUI

struct DataModel: Codable {
    var name: String
    var description: String
    var price: String
    var features: [String]
    var speed: Int
    var accuracy: Int
    
    var image: Image {
        if let matchedIcon = IconCategory.allCases.first(where: { "\($0)" == icon }){
            print(matchedIcon)
            return Image(systemName: matchedIcon.rawValue)
        }
        else{
            return Image(systemName: "bolt.fill")
        }
    }
    private var icon: String
    var category: String
    
}
enum IconCategory: String, CaseIterable {
    case Brain = "brain.head.profile"
    case Cpu = "cpu"
    case FileCode = "doc.text"
    case MessageSquare = "bubble.left.and.bubble.right.fill"
    case Music = "music.note"
    case Pencil = "pencil"
    case Robot = "robot"
    case Sparkles = "sparkles"
    case Video = "video.fill"
    case Wand2 = "wand.and.rays"
    case Zap = "bolt.fill"
}


struct Category: Codable {
    var name: String
    var image: Image {
        if let matchedIcon = CategoryName.allCases.first(where: { "\($0)" == name.lowercased() }){
            return Image(systemName: matchedIcon.rawValue)
        }
        else{
            return Image(systemName: "bolt.fill")
        }
    }
    
}
enum CategoryName: String, CaseIterable {
    case language = "cpu"
    case image = "photo"
    case video = "video"
    case audio = "speaker"
    case code = "doc.text"
    case agent = "brain"
    
}


