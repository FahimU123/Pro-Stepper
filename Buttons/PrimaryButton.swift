//
//  PrimaryButton.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI


struct PrimaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.horizontal, 100)
            .padding(.vertical, 15)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.38, green: 0.91, blue: 0.38)]), startPoint: .topLeading, endPoint: .bottomTrailing
            )
        )
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.black, lineWidth: 1))
            .font(.custom("American Typewriter", size: 30))
    }
}

