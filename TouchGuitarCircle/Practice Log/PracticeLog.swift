//
//  PracticeLog.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/27/21.
//

import SwiftUI

struct PracticeLog: View {
    var body: some View {
        ZStack {
            Color(.systemGray4)
            Text("Practice Log Goes Here")
        }
        .ignoresSafeArea(edges: .all)
    }
}

struct PracticeLog_Previews: PreviewProvider {
    static var previews: some View {
        PracticeLog()
            .preferredColorScheme(.dark)
    }
}
