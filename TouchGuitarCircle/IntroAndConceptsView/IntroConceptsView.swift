//
//  IntroConceptsView.swift
//  TouchGuitarCircle
//
//  Created by Rick Allen on 1/16/21.
//

import SwiftUI


let concepts = ["Welcome","TRM", "Practice", "Position","Thumbs", "Metronome", "Dynamics"]

let introConceptsItems = [IntroListItem(title: "Welcome to The Touch Guitar Circle",
                                        detail: "Welcome to the Touch Guitar Circle app.  The Touch Guitar Circle is a world wide organization founded by Markus Reuter.  The Circle’s purpose is to teach the practice and playing of the Touch Guitar.  Some people call this method tapping, yet there is far more depth to it, it is not just poking one or two fingers on the fretboard.  We are committed to a program and practice studies using a positive approach.  Markus has thourouhly analyzed the mechanics of playing the touch guitar and has put together an amazing amount of studies and exercises. Our group aims to communicate positively at all times ",
                                        sName: nil,
                                        iName: "tgc_invers_transparent"),
                          
                          IntroListItem(title: "Touch, Release, Move",
                                        detail: "Not Yet",
                                        sName: nil,
                                        iName: "trm_invers_transparent"),
                          
                          IntroListItem(title: "Practice Concepts",
                                        detail: "Practice is not a goal, but a process.  Practice is the process of working on your Touch Guitar skills and techniques.  Intentional practice is much more effective at learning the Touch Guitar than just sitting down and playing or noodling.  Have a goal in what you want to improve, and then practice toward that goal.  In The Touch Guitar seminar meetings we pick an exercise and a starting tempo for the metronome and practice that exercise for at least five minutes.  Then if you are comfortable at that tempo increase the metronome a bit and continue on.  Usually we practice a single exercise for between ten to fifteen minutes at a time. Take a bit of a break between sessions and then start another practice session of the same or different exercise.  Practicing daily even for only fifteen to thirty minutes will improve your Touch Guitar skills much faster than practicing few days and longer periods. Then after practice is done and you are satisfied with your time spent, then there is time for composition and playing.",
                                        sName: nil,
                                        iName: "timer"),
                          
                          IntroListItem(title: "Positioning the Touch Guitar",
                                        detail: "The proper playing position for Touch Guitar is one that allows both hands and all fingers to come in contact with the fretboard.  Typically this means that the neck is elevated to a more vertical position to allow both hands to approach the fingerboard from each side.  Elbows should be loose and not held close to the body.  Any tenseness in your arms, wrists, and fingers will not make Touch Guitar any easier.  If you can place all eight fingers on one string at the same time your are achieving the correct playing position.  Note the photo of Markus Reuter demonstrating proper playing position for two hand Touch Guitar playing position.",
                                        sName: nil,
                                        iName: "position"),
                          
                          IntroListItem(title: "Thumbs Up Technique",
                                        detail: "In order to allow for each finger to tap and easily access any part of the fretboard.  Touch Guitarists utilize the principle of “Thumbs Up.”  This means that both the left and the right hand have the thumb pointing towards the headstock. This thumb position allows any finger to come in contact with any string at any fret on the fretboard.  Typically for right handed players the right hand with have the thumb on the back of the neck pointing toward the headstock.  The right hand usually has the thumb resting on the top of the fretboard pointed toward the headstock.  These hand positions facilitate moving up and down the neck while maintaining optimal finger position on the fretboard. ",
                                        sName: "hand.thumbsup",
                                        iName: nil),
                          
                          IntroListItem(title: "Using a Metronome",
                                        detail: "Using a metronome is an important part of your Touch Guitar practice routine.  A metronome helps you to learn to play in time and internalize the beat of music.  Start at slower tempos and only move on when you are satisfied that you can practice well at this metronome template.  Alternatives to a metronome are a drum track in your DAW recording software.  If you can we recommend using just a plain metronome with or without beat subdivisions.  This will help you get a feel and internalize the beat and any required subdivisions.",
                                        sName: "metronome",
                                        iName: nil),
                          
                          IntroListItem(title: "Achieving Dynamics",
                                        detail: "Unlike a traditional stringed instrument dynamics (lout / soft) sounds are not generated by picking or plucking the fretted string harder and softer.  Touch Guitar uses the velocity that you tap the string to generate loud and softer sounds.  The faster and harder you tap the string, the louder the note will sound.  Practicing dynamics is an important part of making your Touch Guitar playing dynamically expressive.  Practice generating louder and softer notes by changing the velocity that you tap the string. As always it is important to use a metronome to improve your timing accuracy.",
                                        sName: nil,
                                        iName: "dynamics")
]

struct IntroConceptsView: View {
    let coloredNavAppearance = UINavigationBarAppearance()
    
    init() {
        coloredNavAppearance.configureWithTransparentBackground()
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
    }
    var body: some View {
        
        return NavigationView(content: {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, Color("gradientBottom")]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                ScrollView{
                    VStack {
                        Spacer(minLength: 45)
                        Text("Touch Guitar Concepts")
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                        Image("tgc_invers_transparent")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .padding(.top, 1)
                            .padding(.bottom, 10)
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[0])) { IntroConceptsListItem(localItem: introConceptsItems[0])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[1])) { IntroConceptsListItem(localItem: introConceptsItems[1])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[2])) { IntroConceptsListItem(localItem: introConceptsItems[2])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[3])) { IntroConceptsListItem(localItem: introConceptsItems[3])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[4])) { IntroConceptsListItem(localItem: introConceptsItems[4])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[5])) { IntroConceptsListItem(localItem: introConceptsItems[5])
                        }
                        NavigationLink(destination: IntroConceptsDetailView(item: introConceptsItems[6])) { IntroConceptsListItem(localItem: introConceptsItems[6])
                        }
                        
                    }
                }.frame(width: UIScreen.screenWidth-20, height: UIScreen.screenHeight-50, alignment: .center)
                .ignoresSafeArea(.all)
            }.ignoresSafeArea(.all)
        })
    }
}

struct IntroConceptsView_Previews: PreviewProvider {
    static var previews: some View {
        IntroConceptsView()
            .preferredColorScheme(.dark)
    }
}
