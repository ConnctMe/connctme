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
                VStack(spacing: 15.0) {
                    ForEach(connections, id: \.id) { c in
                        PersonView(connection: c)
                    }
                }
                .padding(.top)
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
        ConnectionsScreen(
            connections: [
                Connection(
                    name: "Nicolas Lorentzen",
                    image: ProfileImage(),
                    description: "Full Stack Developer @ Google",
                    tags: [TagData(text: "Google", color: .green), TagData(text: "Recruiter", color: .orange), TagData(text: "Mentor", color: .gray), TagData(text: "Internship", color: .red)],
                    meetingTime: "Tuesday",
                    meetingEvent: "Job Fair",
                    meetingLocation: "Providence, RI"),
                Connection(
                    name: "Jiahua Chen",
                    image: ProfileImage(),
                    description: "SWE at Facebook",
                    tags: [TagData(text: "Facebook", color: .blue), TagData(text: "Recruiter", color: .orange), TagData(text: "Internship", color: .red)],
                    meetingTime: "Tuesday",
                    meetingEvent: "Job Fair",
                    meetingLocation: "Providence, RI"),
                Connection(
                    name: "Gareth Mansfield",
                    image: ProfileImage(),
                    description: "Stanford CS Graduate Student",
                    tags: [TagData(text: "Stanford", color: .red), TagData(text: "New York", color: .blue), TagData(text: "Job Hunting", color: .orange)],
                    meetingTime: "September 27",
                    meetingEvent: "CS Mixer",
                    meetingLocation: "Facebook Group"),
                Connection(
                    name: "Emily Ye",
                    image: ProfileImage(),
                    description: "Professor at Yale",
                    tags: [TagData(text: "Systems", color: .green), TagData(text: "Research", color: .pink), TagData(text: "Yale", color: .blue)],
                    meetingTime: "September 14",
                    meetingEvent: "AI Conference",
                    meetingLocation: "New Haven, CT")])
    }
}
