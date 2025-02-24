//
//  Ranks.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import Foundation
import SwiftData

enum Ranks: String, Codable {
    case trainee = "Trainee"
    case apprentice = "Apprentice"
    case master = "Master"
    
    var rankBadgeImageName: String {
        switch self {
        case .trainee:
            return "trainee"
        case .apprentice:
            return "apprentice"
        case .master:
            return "master"
        }
    }
}


@Model
class RankBadge {
    var name: String
    var imageName: String
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
    
}
