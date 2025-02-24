//
//  AchivementBadges.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import Foundation

enum BadgeType: String, Codable {
    case certification
    case achivemment
}

enum AchivementBadge: String, Codable {
    case firstStep = "First Step"
    case trailblazer = "Trail Blazer"
    case firewalker = "Firewalker"
    
    var achivementBadgeImage: String {
        switch self {
        case .firstStep: return "firstStep"
        case .trailblazer: return "trailblazer"
        case .firewalker: return "firewalker"
        }
    }
}

