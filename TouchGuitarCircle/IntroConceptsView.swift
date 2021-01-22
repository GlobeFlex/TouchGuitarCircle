//
//  IntroConceptsView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/16/21.
//

import SwiftUI

let concepts = ["Welcome","TRM", "Practice", "Position","Thumbs", "Metronome", "Dynamics"]

struct IntroConceptsView: View {
    func initialize(){
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        //UITableView.appearance().tableFooterView = UIView()
    }
    
    var body: some View {
        
        
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Text("Touch Guitar Concepts")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.top, 44)
               
                
                
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
    }
}
