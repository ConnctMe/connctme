//
//  ConnectionsScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI

struct ConnectionsScreen: View {
    
    let connections : [Connection]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                VStack(spacing: 15.0) {
                    ForEach(connections, id: \.id) { c in
                        PersonView(connection: c)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                        Text("My Connections").font(.headline)
                    }
                }
            }
        }
    }
}

struct ConnectionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsScreen(connections: [Connection(name: "Nicolas Lorentzen", image: ProfileImage(), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .yellow), TagData(text: "Google", color: .blue)], meetingTime: "Tuesday", meetingEvent: "Google Job Fair", meetingLocation: "Providence, RI"),
                          Connection(name: "Nicolas Lorentzen", image: ProfileImage(), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI"),
                          Connection(name: "Nicolas Lorentzen", image: ProfileImage(), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI")])
    }
}
