//
//  ProfileScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI


struct ProfileScreen: View {
    @State var editing = false
    
    var profile: Profile
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                VStack (alignment: .leading){
                    Text(profile.name)
                        .foregroundColor(Color.black)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                        .frame(height: 20.0)
                    Text(profile.description)
                        .font(.body)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Text(profile.location)
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                profile.image
            }
        .padding(.top, 0)
        Button(action: {
            editing = true
        }) {
            Text("Edit Profile")
        }
        Text("About")
            .font(.title2)
        Text(profile.about)
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            .lineLimit(nil)
            .font(.body)
        
        Spacer()
        }
    }
    
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen(profile: Profile(name: "Nicolas Lorentzen", image: ProfileImage(size: 80, imageFile: "nlorentzen"), description: "Full Stack Dev at Google", location: "Providence, RI", tags: [], about: "description here etc etc"))
    }
}
