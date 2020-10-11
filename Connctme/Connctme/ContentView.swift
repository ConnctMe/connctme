//
//  ContentView.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
//import BottomBar_SwiftUI

//let barContent: [BottomBarItems]

struct ContentView: View {
    @State private var loggedIn = false
    @State private var user : Profile?
    @State private var selection = 1
    
    @State var v = 0
    
    @State var name : String = ""
    @State var username : String = ""
    @State var password : String = ""
    @State var description : String = ""
    @State var location: String = ""
    @State var tags: String = ""
    @State var about: String = ""
    @State var resume: String = "" //string represents url

    var body: some View {
        if loggedIn {
            TabView(selection: $selection) {
                ConnectionsScreen(connections: placeholderConnections)
                    .tabItem {
                        Text("My Connections")
                        Image(systemName: "list.bullet")
                    }.tag(1)
                AddConnectionScreen()
                    .tabItem {
                        Text("Connect")
                        Image(systemName: "plus.circle.fill")
                    }.tag(2)
                ProfileScreen(profile: user!)
                    .tabItem {
                        Text("My Profile")
                        Image(systemName: "person.crop.circle.fill")
                    }.tag(3)
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
                        
                    }) {
                    Text("Log in")
                        .font(.title3)
                    }
                }
            } else if (v == 1) {
                /*HStack() {
                    VStack(alignment: .leading, spacing: 40) {
                        Text("Name: ")
                        Text("Enter Email: ")
                        Text("Enter Password: ")
                        Text("Description: ")
                        Text("Location: ")
                        Text("About:")
                        Text("Insert Resume URL:")
                    }
                }*/
                VStack(alignment: .center) {
                    Group {
                    HStack() {
                        Text("Name: ")
                        Spacer()
                        TextField("Required", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    HStack() {
                        Text("Enter Email: ")
                        Spacer()
                        TextField("Required", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    HStack() {
                        Text("Enter Password: ")
                        Spacer()
                        SecureField("Required", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    HStack() {
                        Text("Description: ")
                        Spacer()
                        TextField("", text: $description)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    HStack() {
                        Text("Location: ")
                        Spacer()
                        TextField("", text: $location)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    HStack() {
                        Text("Tags: ")
                        Spacer()
                        TextField("", text: $tags)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 250)
                    }
                    Text("About:")
                    TextEditor(text: $about)
                        .lineLimit(7)
                        .font(.body)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .overlay(
                            Rectangle()
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
                    Text("Insert Resume URL:")
                    TextField("", text: $resume)
                        .textFieldStyle(RoundedBorderTextFieldStyle())}
                    Button(action: {
                        user = Profile(username: username, password: password, name: name, image: ProfileImage(imageFile: "nlorentzen"), description: description, location: location, tags: tags.split(separator: ",").map {TagData(text: String($0), color: [.red, .yellow, .blue, .green].randomElement()!)}, about: about, resume: URL(string: resume))
                        loggedIn = true
                    }) {
                        Text("Submit")
                            .font(.title3)
                    }
                }.padding(.horizontal, 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
