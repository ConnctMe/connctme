//
//  ProfileScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
import PDFKit
import Firebase


struct ProfileScreen: View {
    @State var editing = false
    
    @State var profile: Profile
    
    var body: some View {
        if (!editing) {
            VStack (alignment: .leading) {
                HStack {
                    VStack (alignment: .leading){
                        Text(profile.name)
                            .foregroundColor(Color.black)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal, 0)
                            .padding(.vertical, 10)
                            .frame(height: 20.0)
                        Text(profile.description)
                            .font(.title3)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        Text(profile.location)
                            .font(.title3)
                            .fontWeight(.light)
                        Button(action: {
                            editing = true
                        }) {
                            Text("Edit Profile")
                                .font(.title3)
                        }
                    }
                    Spacer()
                    profile.image
                }
                HStack(alignment: .center) {

                    ForEach(profile.tags, id: \.id) {tag in
                        Tag(data: tag, width: 8, height: 25)
                    }
                    Spacer()
                }
            .padding(.top, 15)
            VStack (alignment: .leading) {
                Text("About")
                    .font(.title2)
                Text(profile.about)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .lineLimit(nil)
                    .font(.body)
            }
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
                if let resume = profile.resume {
                    PDFKitView(url: resume)
                }
                
                
            Spacer()
            }
            .padding(.horizontal, 15)
        }
        else {
            VStack (alignment: .leading) {
                HStack {
                    VStack (alignment: .leading){
                        TextField(profile.name, text: $profile.name)
                            .foregroundColor(Color.black)
                            .font(.title)
                            .padding(.horizontal, 0)
                            .padding(.top, 10)
                            .padding(.bottom, 0)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField(profile.description, text: $profile.description)
                            .font(.title3)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField(profile.location, text: $profile.location)
                            .font(.title3)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            editing = false
                            let profileDictionary = [
                                "name": profile.name,
                                "description": profile.description,
                                "location": profile.location,
                                "about": profile.about
                            ]
                            let docRef = Firestore.firestore().document("profiles/\(profile.id.uuidString)")
                            docRef.setData(profileDictionary) { (error) in
                                if let error = error {
                                    print("error = \(error)")
                                }
                                else {
                                    print("data uploaded successfully")
                                }
                            }
                        }) {
                            Text("Save Changes")
                                .font(.title3)
                        }
                    }
                    profile.image
                }
            .padding(.top, 0)
                VStack(alignment: .leading) {
                    Text("About")
                        .font(.title2)
                        .padding(.all, 5)
                        
                    TextEditor(text: $profile.about)
                        //.fixedSize(horizontal: false, vertical: true)
                        .lineLimit(nil)
                        .font(.body)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .overlay(
                            Rectangle()
                                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
                    
                }
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 2))
            Spacer()
            }
            .padding(.horizontal, 15)
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen(profile: Profile(username: "", password: "", name: "Nicolas Lorentzen", image: ProfileImage(size: 100, imageFile: "nlorentzen"), description: "Full Stack Dev at Google", location: "Providence, RI", tags: [TagData(text: "Google", color: .purple), TagData(text: "Providence", color: .red)], about: "hsafgkdjhgsdkjf sadgfsadh weuiohqw hdkasfdasf  sasf sdfga ewy asdfug se fyasgkdf ashdf wf yausgdfasydf weyfgdasuyfgsa waefygs dauyfgas  wefy agsdfgsd f", resume: URL(string:  "https://writing.colostate.edu/guides/documents/resume/functionalSample.pdf")!))
            .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}
