//
//  Models.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/22/21.
//

import Foundation

class IntroListItem {
    var titleText: String
    var detailText: String
    var symbolName: String?
    var imageName: String?
    
    init(title: String, detail: String, sName: String?, iName: String?) {
        self.titleText   = title
        self.detailText  = detail
        self.symbolName  = sName
        self.imageName   = iName
    }
}

class Model: ObservableObject {
    @Published var pushed = false
}

