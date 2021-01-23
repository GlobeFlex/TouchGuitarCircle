//
//  IntroConceptsListItem.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/22/21.
//

import SwiftUI

struct IntroConceptsListItem: View {
    var item: IntroListItem
    var image: Image? = nil
    var listText: Text? = nil
    
    
    mutating func setImage(){
    if let thisItem = item.imageName {
        image = Image(thisItem)
    }
    else if let thisItem = item.symbolName {
        image = Image(systemName: thisItem)
        
    }else {
        image = Image("tgc")
    }
    listText = Text("Welcome to the Touch Guitar Circle")
        
}
    init() {
        setImage()
    }
    var body: some View {
        
       return VStack {
            HStack {
                image!
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
