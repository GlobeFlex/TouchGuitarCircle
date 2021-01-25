//
//  IntroConceptsDetailDetailView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/25/21.
//

import SwiftUI
struct IntroConceptsDetailView: View {
    var localItem: IntroListItem
    init(item: IntroListItem) {
        localItem = item
    }
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View {
        
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("gradientBottom")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            VStack {
                Text(localItem.titleText)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding(.top,40)
                Image(localItem.imageName!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .padding(.top,8)
                    .padding(.bottom, 8)
                Text(localItem.detailText)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0))
                    .foregroundColor(.blue)
                
                Spacer()
                
                HStack {
                    Image(systemName: "arrowtriangle.left")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20, alignment: .leading)
                        .padding(.bottom, 15)
                    Text("Swipe from edge to go back")
                        .foregroundColor(.white)
                        .padding(.bottom,15)
                    Spacer()
                }
                    
            }.padding()
        }
        .edgesIgnoringSafeArea(.all)
        
}
}

struct IntroConceptsDetailDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IntroConceptsDetailView(item: IntroListItem(title: "Welcome to The Touch Guitar Circle",
                                                          detail: "Welcome to the Touch Guitar Circle app.  The Touch Guitar Circle is a world wide organization founded by Markus Reuter.  The Circle’s purpose is to teach the practice and playing of the Touch Guitar.  Some people call this method tapping, yet there is far more depth to it, it is not just poking one or two fingers on the fretboard.  We are committed to a program and practice studies using a positive approach.  Markus has thourouhly analyzed the mechanics of playing the touch guitar and has put together an amazing amount of studies and exercises. Our group aims to communicate positively at all times ",
                                                          sName: nil,
                                                          iName: "tgc_invers_transparent"))
    }
}
