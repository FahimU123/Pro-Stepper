//
//  ExerciseSelectionView.swift
//  Pro Stepper
//
//  Created by Fahim Uddin on 2/24/25.
//

import SwiftUI

struct ExerciseSelection: View {
    @State private var isSelectingDuration = false
    @State private var selectedExercise: String? = nil
    let exercises = ["Seated Marches", "Hip Abducions", "Calf Stretches"]
    var body: some View {
        VStack {
            Text("Select an Exercise")
                .padding()
            
            ForEach(exercises, id: \.self) { exercise in
                Button{
                    selectedExercise = exercise
                    isSelectingDuration.toggle()
                } label: {
                    SecondaryButton(name: exercise)
                }
                .buttonStyle(PrimaryButton())
            }
        }
        .sheet(isPresented: $isSelectingDuration) {
            DurationSelection()
        }
    }
}

#Preview {
    ExerciseSelection()
}
