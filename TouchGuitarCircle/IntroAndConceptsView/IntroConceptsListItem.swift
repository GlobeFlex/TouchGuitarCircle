//
//  IntroConceptsListItem.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/22/21.
//

import SwiftUI

struct IntroConceptsListItem: View {
    var item: IntroListItem
    init(localItem: IntroListItem) {
        item = localItem
    }
    var body: some View {
        
        let image: Image = item.imageName != nil ? Image(item.imageName!) : Image(systemName: item.symbolName!)
        let listText: Text = Text(item.titleText)
        

       return VStack {
            HStack {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45, height: 45)
                    .padding(.leading, 13)
                    .padding(.top,2)
                    .padding(.bottom, 2)
                    
                listText
                    .padding(.trailing,4)
        
                    .font(.system(.body))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                Spacer()
                    
            }
            .padding(.all, 4
            )
            .background(RoundedRectangle(cornerRadius: 25))
       
            .foregroundColor(Color.blue)
       }
       .padding(.leading, 15)
       .padding(.trailing, 15)
       .padding(.bottom, 5)
    }
}

struct IntroConceptsListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroConceptsListItem(localItem: IntroListItem(title: "Welcome to The Touch Guitar Circle", detail: "na", sName: nil, iName: "tgc_invers_transparent"))
        }
    }
}
