//
//  BadgeInfoSheetView.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI

struct BadgeInfoSheet: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                Text("Badge Overview")
                    .font(.custom("American Typewrite", size: 30))
                    .padding(.top)
                Text("Rank Badges")
                    .font(.custom("American Typewriter", size: 30))
                    .padding(.top)
                
                VStack(spacing: 15) {
                    VStack(spacing: 8) {
                        Image("trainee")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        Text("Trainee")
                            .font(.custom("American Typewriter", size: 30))
                        

                        Text("The starting rank for every Pro Stepper. This badge signifies the beginning of your journey to becoming a better walker with your prosthesis.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }

                    VStack(spacing: 8) {
                        Image("apprentice")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)

                        Text("Apprentice")
                            .font(.custom("American Typewriter", size: 30))

                        Text("Earned after graduating from the basics. This badge represents dedication and progress toward mastering your prosthetic walking skills.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }

                    VStack(spacing: 8) {
                        Image("master")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)

                        Text("Master")
                            .font(.custom("American Typewriter", size: 30))

                        Text("The pinnacle of Pro Stepper ranks. This badge is awarded to those who have mastered walking with their prosthesis and achieved their goals.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }
                
                Text("Achievement Badges:")
                    .font(.custom("American Typewriter", size: 30))
                    .padding(.top)

                VStack(spacing: 16) {
                    VStack(spacing: 8) {
                        Image("firststep")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)

                        Text("First Step")
                            .font(.custom("American Typewriter", size: 30))

                        Text("Awarded the first time you exercise using this app. This badge marks the start of your journey to better mobility.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }

                    VStack(spacing: 8) {
                        Image("trailblazer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)

                        Text("Trailblazer")
                            .font(.custom("American Typewriter", size: 30))

                        Text("Earned after completing a 3-day exercise streak. This badge highlights your determination and consistency.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }

                    VStack(spacing: 8) {
                        Image("firewalker")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)

                        Text("Fire Walker")
                            .font(.custom("American Typewriter", size: 30))

                        Text("Awarded after maintaining a 30-day streak. This badge symbolizes unwavering commitment and perseverance.")
                            .font(.custom("American Typewriter", size: 20))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                    }
                }

                Spacer()
            }
            .padding()
        }
    }
}


#Preview {
    BadgeInfoSheet()
}
