//
//  ActionView.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI

struct Action: View {
    @State private var isSelectingExercise = false
    var body: some View {
        ZStack {
            VStack {
                Button("Select Exercise") {
                    isSelectingExercise.toggle()
                }
                .padding(20)
                .buttonStyle(PrimaryButton())
                .sheet(isPresented: $isSelectingExercise) {
                    ExerciseSelection()
                        .padding(.top, 200)
                }
           
                }
            .padding(.top, 200)
//            CameraView()
        
                Button("Start") {
                    
                }
                .buttonStyle(PrimaryButton())
                .padding(20)
               
            }
        }
    }

#Preview {
    Action()
}
