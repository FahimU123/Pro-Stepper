//
//  User.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import Foundation
import SwiftData

@Model
class User {
    var currentRank: Ranks
    var rating: Int {
        didSet {
            updateRank()
        }
    }
    var badges: [RankBadge]

    init(rating: Int = 0) {
        self.currentRank = .trainee
        self.badges = []
        self.rating = rating
        updateRank()
    }

    private func updateRank() {
        let newRank: Ranks
        switch rating {
        case 0..<100:
            newRank = .trainee
        case 100..<200:
            newRank = .apprentice
        default:
            newRank = .master
        }
        
        if newRank != currentRank {
            currentRank = newRank
            let rankBadge = RankBadge(name: newRank.rawValue, imageName: newRank.rankBadgeImageName)
            if !badges.contains(where: { $0.name == rankBadge.name }) {
                badges.append(rankBadge)
            }
        }
    }
}
