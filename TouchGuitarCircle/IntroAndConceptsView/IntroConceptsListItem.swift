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
                    .foregroundColor(.white)
                    
                listText
                    
                    .font(.system(.body))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "arrowtriangle.right")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white)
                    .padding(.trailing,8)
            }
            .padding(.all, 4)
            .background(RoundedRectangle(cornerRadius: 25))
            .foregroundColor(Color("listBackground"))
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct IntroConceptsListItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            IntroConceptsListItem(localItem: IntroListItem(title: "Welcome to The Touch Guitar Circle", detail: "na", sName: "metronome", iName: nil))
        }
    }
}
