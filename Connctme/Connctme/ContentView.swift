//
//  ContentView.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI
import BottomBar_SwiftUI

let barContent: [BottomBarItems]

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
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
            ProfileScreen(profile: placeholderProfile)
                .tabItem {
                    Text("My Profile")
                    Image(systemName: "person.crop.circle.fill")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
