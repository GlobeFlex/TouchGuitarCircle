//
//  FamilyExerciseListView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/26/21.
//

import SwiftUI

struct FamilyExerciseListView: View {
    var familyListItems: [IntroListItem] = [IntroListItem(title: "Son",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Daughter I",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Daughter II",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Mother",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Father [Ascending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Father [Descending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Pentachord Approach",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Uncle [Ascending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Uncle [Descending]",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil),
                                            IntroListItem(title: "Grandfather",
                                                          detail: "",
                                                          sName: "person",
                                                          iName: nil)
    ]
    
    var body: some View {
        return NavigationView(content: {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, Color("purpleGradientLight")]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                ScrollView{
                    VStack {
                        
                        VStack {
                            Text("The Family Exercises")
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top, 20)
                            
                            Image(systemName: "person.3")
                                .resizable()
                                .frame(width: 180, height: 80, alignment: .center)
                                .padding(.top, 1)
                                .padding(.bottom, 10)
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[0])
                            }
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[1])
                            }
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[2])
                            }
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[3])
                            }
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[4])
                            }
                        }
                        
                        VStack {
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[5])
                            }
                            NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { FamilyExercisesListItem(localItem: familyListItems[6])
                            }
                        }
                        Spacer()
                    }.ignoresSafeArea(.all)
                }
                .frame(width: 400, height: 618, alignment: .center)
                .ignoresSafeArea(.all)
            }.ignoresSafeArea(.all)
                
            
        })
    }
}

struct FamilyExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyExerciseListView()
    }
}
