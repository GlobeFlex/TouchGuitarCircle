//
//  IntroConceptsView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/16/21.
//

import SwiftUI

struct IntroConceptsView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct IntroConceptsView_Previews: PreviewProvider {
    static var previews: some View {
        IntroConceptsView()
    }
}
