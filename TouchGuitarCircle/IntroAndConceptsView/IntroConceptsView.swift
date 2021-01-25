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
                           sName: nil,
                           iName: "timer"),
             IntroListItem(title: "Positioning the Touch Guitar",
                           detail: "N/A",
                           sName: nil,
                           iName: "position"),
             IntroListItem(title: "Thumbs Up Technique",
                           detail: "Na",
                           sName: nil,
                           iName: "thumbs"),
             IntroListItem(title: "Using a Metronome",
                           detail: "NA",
                           sName: nil,
                           iName: "metronome"),
             IntroListItem(title: "Achieving Dynamics",
                           detail: "N/A",
                           sName: nil,
                           iName: "dynamics")
            ]

struct IntroConceptsView: View {
    
    var body: some View {
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("gradientBottom")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Text("Touch Guitar Concepts")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.bottom, 8)
                
                IntroConceptsListItem(localItem: items[0])
                IntroConceptsListItem(localItem: items[1])
                IntroConceptsListItem(localItem: items[2])
                IntroConceptsListItem(localItem: items[3])
                IntroConceptsListItem(localItem: items[4])
                IntroConceptsListItem(localItem: items[5])
                IntroConceptsListItem(localItem: items[6])
                
                Spacer()
                
                Text("")
                    .foregroundColor(.black)
                    .padding(.bottom, 25)
                
            }.padding(.horizontal, 8)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct IntroConceptsView_Previews: PreviewProvider {
    static var previews: some View {
        IntroConceptsView()
            .preferredColorScheme(.dark)
    }
}
