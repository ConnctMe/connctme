//
//  LoginScreen.swift
//  Connctme
//
//  Created by Gareth Mansfield on 10/11/20.
//

import SwiftUI

struct LoginScreen: View {
    @State var v = 0
    
    @State var name : String = ""
    @State var username : String = ""
    @State var password : String = ""
    @State var description : String = ""
    @State var location: String = ""
    @State var about: String = ""
    @State var resume: String = "" //string represents url
    
    @State var profile: Profile?
    
    
    var body: some View {
        if(v == 0) {
            VStack(alignment: .center) {
                Button(action: {
                    v = 1
                }) {
                    Text("Log In")
                        .font(.title3)
                }
                Text("or")
                Button(action: {
                    
                }) {
                    Text("Sign up")
                        .font(.title3)
                }
            }
        } else if (v == 1) {
            HStack() {
                Text("Name: ")
                TextField("", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack() {
                Text("Enter Username: ")
                TextField("", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack() {
                Text("Enter Password: ")
                TextField("", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack() {
                Text("Description: ")
                TextField("", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack() {
                Text("Location: ")
                TextField("", text: $location)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Text("About:")
            TextField("", text: $about)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Insert Resume URL:")
            TextField("", text: $resume)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                Profile(username: username, password: password, name: name, image: ProfileImage(imageFile: "nlorentzen"), description: description, location: location, tags: [], about: about, resume: URL(string: resume))
            }) {
                Text("Submit")
                    .font(.title3)
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    } 
}
