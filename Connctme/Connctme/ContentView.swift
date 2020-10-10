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
            ConnectionsScreen()
                .tabItem {
                    Text("Connections")
                }.tag(1)
            AddConnectionScreen()
                .tabItem {
                    Text("Add Connection")
                }.tag(2)
            ProfileScreen()
                .tabItem {
                    Text("Profile")
                }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
