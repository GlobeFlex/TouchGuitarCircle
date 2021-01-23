//
//  IntroConceptsView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/16/21.
//

import SwiftUI


let concepts = ["Welcome","TRM", "Practice", "Position","Thumbs", "Metronome", "Dynamics"]

let items = [IntroListItem(title: "Welcome to The Touch Guitar Circle",
                           detail: "Not Yet",
                           sName: nil,
                           iName: "tgc_invers_transparent"),
             IntroListItem(title: "Touch, Release, Move",
                           detail: "Not Yet",
                           sName: nil,
                           iName: "trm_invers_transparent"),
             IntroListItem(title: "Practice Concepts",
                           detail: "N/A",
                           sName: "timer",
                           iName: nil)
            ]

struct IntroConceptsView: View {
    
    var body: some View {
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color(.systemGray3)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Text("Touch Guitar Concepts")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.bottom, 8)
               
                IntroConceptsListItem()

                Spacer()
                
                Text("Bottom")
                    .foregroundColor(.black)
                    .padding(.bottom, 25)
                
            }.padding(.horizontal, 8)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct IntroConceptsView_Previews: PreviewProvider {
    static var previews: some View {
        IntroConceptsView()
            .preferredColorScheme(.light)
    }
}
