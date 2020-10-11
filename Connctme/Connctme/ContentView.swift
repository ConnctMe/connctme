//
//  ContentView.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
import BottomBar_SwiftUI
import ConcentricOnboarding

let barContent: [BottomBarItem] = [
    BottomBarItem(icon: "list.bullet", title: "Connections", color: .purple),
    BottomBarItem(icon: "plus.circle.fill", title: "Add Connection", color: .purple),
    BottomBarItem(icon: "person.crop.circle.fill", title: "Profile", color: .purple)
]

struct ContentView: View {
    @State var loggedIn = true
    @State private var user : Profile?
    @State private var hasTimeElapsed = true
    
    @State var v = 0
    
    @State var name : String = ""
    @State var username : String = ""
    @State var password : String = ""
    @State var description : String = ""
    @State var location: String = ""
    @State var tags: String = ""
    @State var about: String = ""
    @State var resume: String = "" //string represents url
    
    @State private var selection: Int = 0
    var selectedItem: BottomBarItem {
        return barContent[selection]
    }
    
    private func delayText() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.hasTimeElapsed = true
            }
        }

    var body: some View {
        if loggedIn {
            VStack {
                switch selection {
                case 0:
//                    ConnectionsScreen(connections: [])
                    ConnectionsScreen(connections: hasTimeElapsed ? placeholderConnections : Array(placeholderConnections.dropFirst()))
                        .onAppear(perform: delayText)
                case 1:
                    AddConnectionScreen()
                        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 500, idealHeight: 500, maxHeight: .infinity, alignment: .center)
                case 2:
                    ProfileScreen(profile: placeholderProfile)
                default:
                    Text("Something Went Wrong")
                }
                BottomBar(selectedIndex: $selection, items: barContent)
            }
        } else {
            if(v == 0) {
                VStack(alignment: .center) {
                    Button(action: {
                        v = 1
                    }) {
                    Text("Sign up")
                        .font(.title3)
                    }
                    Text("or")
                    Button(action: {
                        v = 3
                    }) {
                    Text("Log in")
                        .font(.title3)
                    }
                }
            } else if (v == 1) {
                ConcentricOnboardingView(pages: [AnyView(NameEntry()), AnyView(EmailEntry()), AnyView(PasswordEntry())], bgColors: [.purple,.pink,.blue])
            } else if (v == 3) {
                VStack {
                    HStack {
                        Spacer(minLength: 20)
                        TextField("Email", text: $username)
                            .padding(10)
                            .cornerRadius(5)
                            .border(Color.black, width: 1)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                        Spacer(minLength: 20)
                    }
                    HStack {
                        Spacer(minLength: 20)
                        SecureField("Password", text: $password)
                            .padding(10)
                            .cornerRadius(5)
                            .border(Color.black, width: 1)
                        Spacer(minLength: 20)
                    }
                    HStack {
                        Spacer(minLength: 20)
                        Button(action: {
                            loggedIn = true
                        }, label: {
                            Text("Log In")
                        })
                        Spacer(minLength: 20)
                    }
                }
            }
        }
        else
        {
            OnboardingScreens(loggedIn: $loggedIn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
