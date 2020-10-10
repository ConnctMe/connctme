//
//  ConnctmeApp.swift
//  Connctme
//
//  Created by LorentzenN on 10/9/20.
//

import SwiftUI

@main
struct ConnctmeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
