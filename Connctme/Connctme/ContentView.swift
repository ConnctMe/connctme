//
//  ContentView.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI


struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            ConnectionsScreen(connections: [
                Connection(name: "Nicolas Lorentzen", image: ProfileImage( imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Recruiter", color: .yellow), TagData(text: "Boston, MA", color: .green), TagData(text: "Internship", color: .blue)], meetingTime: "Tuesday", meetingEvent: "Google Job Fair", meetingLocation: "Providence, RI"),
                Connection(name: "Nicolas Lorentzen", image: ProfileImage(imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI"),
                Connection(name: "Nicolas Lorentzen", image: ProfileImage(imageFile: "nlorentzen"), description: "Full Stack Developer @ Google", tags: [TagData(text: "Google", color: .red), TagData(text: "Google", color: .red)], meetingTime: "Tuesday", meetingEvent: "Google Career Fair", meetingLocation: "Providence, RI")])
                .tabItem {
                    Text("My Connections")
                }.tag(1)
            AddConnectionScreen()
                .tabItem {
                    Text("Connect")
                }.tag(2)
            ProfileScreen(profile: Profile(name: "Nicolas Lorentzen", image: ProfileImage(size: 100, imageFile: "nlorentzen"), description: "Full Stack Dev at Google", location: "Providence, RI", tags: [TagData(text: "Google", color: .purple), TagData(text: "Providence", color: .red)], about: "hsafgkdjhgsdkjf sadgfsadh weuiohqw hdkasfdasf  sasf sdfga ewy asdfug se fyasgkdf ashdf wf yausgdfasydf weyfgdasuyfgsa waefygs dauyfgas  wefy agsdfgsd f", resume: URL(string: "https://writing.colostate.edu/guides/documents/resume/functionalSample.pdf")))
                .tabItem {
                    Text("My Profile")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
