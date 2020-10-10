//
//  ProfileScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI

struct ProfileScreen: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                VStack (alignment: .leading){
                    Text("Nicolas Lorentzen")
                        .foregroundColor(Color.black)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.horizontal, 0)
                        .padding(.vertical, 0)
                        .frame(height: 20.0)
                    Text("Full Stack Developer @ Google")
                        .font(.body)
                    Text("Providence, RI")
                        .font(.subheadline)
                        .fontWeight(.light)
                }
                ProfileImage()
            }
            Text("About")
                .font(.headline)
            Text("Description Here")
                //.frame(width: 200)
                .lineLimit(nil)
            
            .padding(.bottom, 400)
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
