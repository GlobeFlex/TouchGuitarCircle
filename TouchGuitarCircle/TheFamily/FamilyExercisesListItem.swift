//
//  FamilyExercisesListItem.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/26/21.
//

import SwiftUI

struct FamilyExercisesListItem: View {
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
                    .frame(width: 35, height: 35)
                    .padding(.leading, 13)
                    .padding(.top,6)
                    .padding(.bottom, 6)
                    .foregroundColor(.white)
                listText
                    
                    .font(.system(.body))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                Spacer()
                Image(systemName: "arrowtriangle.right")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white)
                    .padding(.trailing,4)
            }
            .padding(.all, 4)
            .background(RoundedRectangle(cornerRadius: 25))
            .foregroundColor(.purple)
        }
        .padding(.leading, 15)
        .padding(.trailing, 15)
        .padding(.bottom, 5)
    }
}

struct FamilyExercisesListItem_Previews: PreviewProvider {
    static var previews: some View {
        FamilyExercisesListItem(localItem: IntroListItem(title: "The Son Exercise", detail: "", sName: "person", iName: nil))
    }
}
