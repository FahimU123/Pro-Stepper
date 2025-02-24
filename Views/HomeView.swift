//
//  HomeView.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI

import SwiftUI

struct Home: View {
    @State private var user = User()
    @State private var showBadgeInfo: Bool = false
    @State private var rating: Float = 10
    var body: some View {
        NavigationStack {
            VStack  {
                Text("PRO STEPPER")
                    .font(.custom("American Typewriter", size: 100))
                    .padding(.bottom, 100)
                    .padding(.top, 20)
                
                Image(user.currentRank.rankBadgeImageName)
                              .resizable()
                              .scaledToFit()
                              .frame(width: 200, height: 200)
                              .padding(.top, 0)
                              .shadow(color: .yellow, radius: 5)
                              .accessibilityLabel("Rank badge: \(user.currentRank). Tap to view all badges.")
                              .onTapGesture {
                                  showBadgeInfo = true
                              }
                      
                          Text("Rank: \(user.currentRank.rawValue)")
                              .font(.custom("American Typewriter", size: 100))
                
                ProgressView(value: rating, total: 100)
                    .padding()
                    .scaleEffect(x: 1, y: 2, anchor: .center)

                          Text("Recent Badges:")
                              .font(.custom("American Typewriter", size: 45))
                              .padding(.bottom, 100)
                              .padding(.top, 50)

                          Spacer()

                          NavigationLink(destination: Action()) {
                              Text("Action Time!")
                                  .accessibilityLabel("Go to the exercise selection screen. Choose an exercise and duration to earn points and move up ranks.")
                          }
                          .buttonStyle(PrimaryButton())
                      }
                      .padding()
                      .sheet(isPresented: $showBadgeInfo) {
                          BadgeInfoSheet()
                      }
                  }
              }
    }
 
#Preview {
    Home()
}
