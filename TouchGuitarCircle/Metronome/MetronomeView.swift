//
//  MetronomeView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/27/21.
//

import SwiftUI

struct MetronomeView: View {
    var body: some View {
        ZStack {
            Color(.systemGray4)
            Text("Metronome Goes Here")
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct MetronomeView_Previews: PreviewProvider {
    static var previews: some View {
        MetronomeView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
