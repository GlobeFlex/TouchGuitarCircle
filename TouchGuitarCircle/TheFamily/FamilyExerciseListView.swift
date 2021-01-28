//
//  FamilyExerciseListView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/26/21.
//

import SwiftUI

struct FamilyExerciseListView: View {
    var familyListItems: [FamilyListItem] = [FamilyListItem(title: "Son",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Daughter I",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Daughter II",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Mother",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Father [Ascending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Father [Descending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Pentachord Approach",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Uncle [Ascending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Uncle [Descending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil),
                                            FamilyListItem(title: "Grandfather",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil,
                                                          vName: nil)
    ]
    
    var body: some View {
        return NavigationView(content: {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, Color("purpleGradientLight")]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                ScrollView{
                    VStack {
                        Spacer(minLength: 45)
                        VStack {
                            Text("The Family Exercises")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                            
                            Image(systemName: "person.3")
                                .resizable()
                                .frame(width: 180, height: 80, alignment: .center)
                                .padding(.top, 1)
                                .padding(.bottom, 10)
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[0])) { FamilyExercisesListItem(localItem: familyListItems[0])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[1])) { FamilyExercisesListItem(localItem: familyListItems[1])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[2])) { FamilyExercisesListItem(localItem: familyListItems[2])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[3])) { FamilyExercisesListItem(localItem: familyListItems[3])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[4])) { FamilyExercisesListItem(localItem: familyListItems[4])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[5])) { FamilyExercisesListItem(localItem: familyListItems[5])
                            }
                            NavigationLink(destination: FamilyExercisesDetailView(localItem: familyListItems[6])) { FamilyExercisesListItem(localItem: familyListItems[6])
                            }
                        }
                        
                        VStack {
                            
                        }
                        Spacer()
                    }.ignoresSafeArea(.all)
                    
                }
                .frame(width: UIScreen.screenWidth-20, height: UIScreen.screenHeight-50, alignment: .center)
                .ignoresSafeArea(.all)
            }
            .ignoresSafeArea(.all)
        })
        .accentColor(.black)
    }
}

struct FamilyExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyExerciseListView()
    }
}
