//
//  SecondaryButton.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI


struct SecondaryButton: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.custom("American Typewriter", size: 20))
            .foregroundColor(.gray)
    }
}
