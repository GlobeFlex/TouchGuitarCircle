//
//  TabBar.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/26/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            IntroConceptsView().tabItem {
                Image(systemName: "info.circle")
                    .foregroundColor(.white)
                Text("Concepts")
                    .foregroundColor(.white)
            }
            FamilyExerciseListView().tabItem {
                Image(systemName: "person.3")
                Text("The Family")
            }
        }.onAppear() {
        
        }
        //.accentColor(.black)
        //.background(Color(.blue))

    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
extension UINavigationController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
}

extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = UITabBarAppearance()
        appearance.configureWithTransparentBackground()
        tabBar.standardAppearance = appearance
    }
}
