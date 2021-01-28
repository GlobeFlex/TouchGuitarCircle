//
//  FamilyExercisesDetailView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/27/21.
//

import SwiftUI
import AVKit
struct FamilyExercisesDetailView: View {
    var item: FamilyListItem

    init(localItem: FamilyListItem){
        item = localItem
    }
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, Color("purpleGradientLight")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            ScrollView{
                VStack{
                    Spacer(minLength: 8)
                    HStack {
                        Image(systemName: "person")
                            .foregroundColor(.white)
                            .font(.title3)
                            
                        Text(item.titleText)
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Text("Video Goes Here")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .foregroundColor(.white)
                        
                        .frame(width:UIScreen.screenWidth - 30, height: UIScreen.screenWidth-20, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .foregroundColor(Color(.purple))
                        .padding(.top,4)
                    
                    Text("Exercise\nDescription\nGoes Here")
                        .font(.title)
                        .foregroundColor(.white)
                        
                        .frame(width:UIScreen.screenWidth - 30, height: UIScreen.screenWidth-100, alignment: .center)
                        .background(RoundedRectangle(cornerRadius: 25.0))
                        .foregroundColor(Color(.purple))
                        .padding(.top,4)
                        
                }

                    
            
            }.frame(width: UIScreen.screenWidth-20, height: UIScreen.screenHeight-105, alignment: .center)
        }.ignoresSafeArea(.all)
    }
}

struct FamilyExercisesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyExercisesDetailView(localItem: FamilyListItem(title: "Son", detail: "", sName: nil, iName: nil, vName: nil))
    }
}
