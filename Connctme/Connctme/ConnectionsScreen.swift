//
//  ConnectionsScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {

    @Binding var text: String
    class Coordinator: NSObject, UISearchBarDelegate {

        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar,
                      context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}


struct ConnectionsScreen: View {
    
    @State private var searchQuery: String = ""
    
    let connections : [Connection]
    
    var body: some View {
        NavigationView {
            ScrollView {
                if connections.isEmpty {
                    Text("Go make come connctions!")
                        .fontWeight(.thin)
                        .padding(.top, 100.0)
                } else {
                    VStack(spacing: 15.0) {
            SearchBar(text: self.$searchQuery)
                        ForEach(connections.filter {
                            self.searchQuery.isEmpty ?
                                true :
                                $0.name.contains(self.searchQuery) || $0.description.contains(self.searchQuery)
                        }, id: \.id) { c in
                            PersonView(connection: c)
                        }
                    }
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                        Text("My Connctions").font(.headline)
                    }
                }
            }
        }
    }
}

struct ConnectionsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionsScreen(connections: [])
        ConnectionsScreen(
            connections: [
                Connection(
                    name: "Nicholas Lorentzen",
                    image: ProfileImage(imageFile: "nlorentzen"),
                    description: "Software Engineer @ Google",
                    tags: [TagData(text: "Google", color: .blue), TagData(text: "Software Engineer", color: .red), TagData(text: "Cloud", color: .green), TagData(text: "Internships", color: .orange)],
                    meetingTime: "Today",
                    meetingEvent: "Job Fair",
                    meetingLocation: "Providence, RI",
                    newConnection: true),
                Connection(
                    name: "Jiahua Chen",
                    image: ProfileImage(imageFile: "jchen"),
                    description: "SWE at Facebook",
                    tags: [TagData(text: "Facebook", color: .blue), TagData(text: "Recruiter", color: .orange), TagData(text: "Internship", color: .red)],
                    meetingTime: "Today",
                    meetingEvent: "Job Fair",
                    meetingLocation: "Providence, RI"),
                Connection(
                    name: "Gareth Mansfield",
                    image: ProfileImage(imageFile: "gmansfield"),
                    description: "Stanford CS Graduate Student",
                    tags: [TagData(text: "Stanford", color: .red), TagData(text: "New York", color: .blue), TagData(text: "Job Hunting", color: .orange)],
                    meetingTime: "September 27",
                    meetingEvent: "CS Mixer",
                    meetingLocation: "Facebook Group"),
                Connection(
                    name: "Emily Ye",
                    image: ProfileImage(imageFile: "nlorentzen"),
                    description: "Professor at Yale",
                    tags: [TagData(text: "AI/ML", color: .green), TagData(text: "Research", color: .pink), TagData(text: "Yale", color: .blue)],
                    meetingTime: "September 14",
                    meetingEvent: "AI Conference",
                    meetingLocation: "New Haven, CT")])
    }
}
