//
//  ConnectionsScreen.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI

struct ConnectionsScreen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Spacer()
                VStack(spacing: 15.0) {
                    PersonView()
                    PersonView()
                    PersonView()
                    PersonView()
                    PersonView()
                    PersonView()
                    PersonView()
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
        ConnectionsScreen()
    }
}
