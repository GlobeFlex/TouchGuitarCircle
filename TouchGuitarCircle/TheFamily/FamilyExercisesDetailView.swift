//
//  FamilyExercisesDetailView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/27/21.
//

import SwiftUI

struct FamilyExercisesDetailView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, Color("purpleGradientLight")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
        }.ignoresSafeArea(.all)
    }
}

struct FamilyExercisesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyExercisesDetailView()
    }
}
