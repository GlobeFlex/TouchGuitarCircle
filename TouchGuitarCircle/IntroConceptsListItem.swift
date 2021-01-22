//
//  IntroConceptsListItem.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/22/21.
//

import SwiftUI

struct IntroConceptsListItem: View {
    var body: some View {
        VStack {
            let image: Image = Image("tgc_invers_transparent", bundle: .main)
            let listText: Text = Text("Welcome to the Touch Guitar Circle")
            
            HStack {
                image
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 45, height: 45)
                    
                listText
                    .padding(.leading, -10)
                    .padding(.trailing,3)
                    .font(.system(.body))
                    .foregroundColor(Color.white)
                    .frame(width: 270, height: 45, alignment: .center)
            }
            .padding(.all, 8)
            .background(RoundedRectangle(cornerRadius: 25))
            .foregroundColor(Color.blue)
            
            HStack {
                Image("tgc_invers_transparent", bundle: .main)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 45, height: 45)
                    
                Text("Welcome to the Touch Guitar Circle")
                    .padding(.leading, -10)
                    .padding(.trailing,3)
                    .font(.system(.body))
                    .foregroundColor(Color.white)
                    .frame(width: 270, height: 45, alignment: .center)
            }
            .padding(.all, 8)
            .background(RoundedRectangle(cornerRadius: 25))
            .foregroundColor(Color.blue)
        }
    }
}

struct IntroConceptsListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroConceptsListItem()
                .preferredColorScheme(.dark)
                
        }
    }
}
